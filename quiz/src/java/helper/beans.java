/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package helper;

import java.io.Serializable;
import java.util.*;

/**
 *
 * @author SURESH
 */
public class beans implements Serializable {

    private static String email = "";
    private static String name = "";
    private static int n;
    private static String quizname = "";
    private static String qwe = "";
    private static int score = 0;
    private static int nn = 0;
    private static String y = "";
    private static int nnn = 0;
    private static String type = "";
    private static String tt;
    private static String selectedId;
    private static String oh = "";
    private static ArrayList<String> al = null;
     private static ArrayList<String> al1 = null;

    public static String getSelectedId() {
        return selectedId;
    }

    public static void setSelectedId(String selectedId) {
        beans.selectedId = selectedId;
    }

    public static void setEmail(String e) {
        email = e;
    }

    public static String getEmail() {
        return email;
    }

    public static void setName(String e) {
        name = e;
    }

    public static String getName() {
        return name;
    }

    public static void setN(int nn) {
        n = nn;
    }

    public static int getN() {
        return n;
    }

    public static void setQuizname(String e) {
        quizname = e;
    }

    public static String getQuizname() {
        return quizname;
    }

    public static void setqwe(String e) {
        qwe = e;
    }

    public static String getqwe() {
        return qwe;
    }

    public static void setnn(int nnn) {
        nn = nnn;
    }

    public static int getnn() {
        return nn;
    }

    public static void setnnn(int nnnn) {
        nnn = nnnn;
    }

    public static int getnnn() {
        return nnn;
    }

    public static void setscore(int nn) {
        score = nn;
    }

    public static int getscore() {
        return score;
    }

    public static ArrayList<String> getAl() {
        return al;
    }

    public static void setAl(ArrayList<String> all) {
        al = all;
    }

    public static ArrayList<String> getAl1() {
        return al1;
    }

    public static void setAl1(ArrayList<String> all) {
        al1 = all;
    }

    public static void sety(String nn) {
        y = nn;
    }

    public static String gety() {
        return y;
    }

    public static void setType(String nn) {
        type = nn;
    }

    public static String getType() {
        return type;
    }

    public static void setTt(String ttt) {
        tt = ttt;
    }

    public static String getTt() {
        return tt;
    }

    public static String getOh() {
        return oh;
    }

    public static void setOh(String g) {
        oh = g;
    }
}
