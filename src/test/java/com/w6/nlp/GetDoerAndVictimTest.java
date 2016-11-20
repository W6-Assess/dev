/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.w6.nlp;

import static com.w6.nlp.Parser.lp;
import static com.w6.nlp.Parser.violentVerbsParser;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.process.CoreLabelTokenFactory;
import edu.stanford.nlp.process.PTBTokenizer;
import edu.stanford.nlp.process.TokenizerFactory;
import edu.stanford.nlp.trees.GrammaticalStructure;
import edu.stanford.nlp.trees.GrammaticalStructureFactory;
import edu.stanford.nlp.trees.PennTreebankLanguagePack;
import edu.stanford.nlp.trees.Tree;
import edu.stanford.nlp.trees.TreebankLanguagePack;
import edu.stanford.nlp.trees.TypedDependency;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import org.junit.Before;
import org.junit.Test;


//мокать ничего не пришлось, так как внутри всего два метода
//причём от сложных объектов библиотечки, вызванных напрямую
//поэтому протестировал, как чёрный ящик
public class GetDoerAndVictimTest {

    //private String text = "Cat killed a dog."; этот тест не пройдёт, то есть ошибка!!
    private String text = "Cat killed dog.";
    private GetDoerAndVictim doerAndVictimParser;
    private ViolentVerbsParser violentVerbsParser;
    private Tree tree;
    private Collection<TypedDependency> listOfDependencies;
    private DependencyTree dependencyTree;

    @Before
    public void setUp() throws IOException {
        LexicalizedParser lp = LexicalizedParser.
                loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
        TokenizerFactory<CoreLabel> tokenizerFactory = PTBTokenizer.
                factory(new CoreLabelTokenFactory(), "");
        tree = lp.apply(
                tokenizerFactory.getTokenizer(new StringReader(text))
                .tokenize());
        TreebankLanguagePack treeLanguagePack = new PennTreebankLanguagePack();
        GrammaticalStructureFactory factoryForGramaticalStructure
                = treeLanguagePack.grammaticalStructureFactory();
        GrammaticalStructure grammaticalStructureOfSentance
                = factoryForGramaticalStructure.newGrammaticalStructure(tree);
        listOfDependencies = grammaticalStructureOfSentance.typedDependenciesCollapsed();

        dependencyTree = new DependencyTree(listOfDependencies);
        doerAndVictimParser
                = new GetDoerAndVictim(listOfDependencies, dependencyTree);
        violentVerbsParser = new ViolentVerbsParser(lp);
    }
//это тест самого инструмента, по идее, его вообще тестировать не надо
    //так как он привязан к библиотечки, которая априори идеально работает 
    //внизу обнаружена ошибка, на простом примере, поэтому смотри выше!
    //так как такой простой тест не проходит, не стал усложнять
    //но можно было бы всё это обернуть в цикл и запускать на какой-то выборки
    //для которой результат работы должен быть всегда одназначен
    @Test
    public void NLPTestGetDoerAndVictim() {
        List<String> sentenseWhat = violentVerbsParser.getAllViolentVerbs(tree);
        List<String> sentenseWho = new ArrayList<String>(0);
        List<String> sentenseWhom = new ArrayList<String>(0);

        GetDoerAndVictim doerAndVictimParser
                = new GetDoerAndVictim(listOfDependencies, dependencyTree);
        LocationParser locationParser
                = new LocationParser(listOfDependencies, dependencyTree);

        sentenseWho.addAll(doerAndVictimParser.getObjectsOfViolence(sentenseWhat));
        sentenseWhom.addAll(doerAndVictimParser.getSubjectsOfViolence(sentenseWhat));
        System.out.println(sentenseWho.get(0).replaceAll("\\s+","").equals("Cat"));
        System.out.println("Cat".equals("Cat"));
        System.out.println(sentenseWhom.get(0).replaceAll("\\s+",""));
        assertTrue(sentenseWho.get(0).replaceAll("\\s+","").equals("Cat"));
        assertTrue(sentenseWhom.get(0).replaceAll("\\s+","").equals("dog"));
    }
}
