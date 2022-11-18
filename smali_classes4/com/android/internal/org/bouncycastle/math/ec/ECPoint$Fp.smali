.class public Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 640
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 641
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 645
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 646
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 29
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 666
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    return-object v1

    .line 670
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    return-object v0

    .line 674
    :cond_1
    if-ne v0, v1, :cond_2

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 679
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 680
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 682
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 683
    .local v5, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 685
    .local v7, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    .line 877
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :pswitch_1
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v10, v10, v9

    .line 756
    .local v10, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v9

    .line 758
    .local v11, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 760
    .local v12, "Z1IsOne":Z
    const/4 v13, 0x0

    .line 762
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_5

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 766
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 767
    .local v15, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 769
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 773
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 776
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 777
    .local v8, "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    move-object/from16 v17, v13

    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 778
    .local v13, "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v8

    .end local v8    # "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 780
    .local v8, "A1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 781
    .local v1, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v13

    .end local v13    # "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 782
    .local v13, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v14

    .line 784
    .local v20, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v1

    move-object/from16 v1, v20

    .end local v20    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 785
    .end local v8    # "A1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "C":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "W2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move-object v15, v13

    move-object/from16 v13, v17

    move-object/from16 v5, v21

    goto/16 :goto_3

    .line 762
    .end local v1    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    move-object/from16 v17, v13

    .line 789
    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_6

    .line 791
    move-object v1, v10

    .local v1, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v8, v6

    .local v8, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v7

    .local v9, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    .line 795
    .end local v1    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 796
    .restart local v1    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 797
    .restart local v8    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 798
    .local v9, "Z1Cubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    move-object v9, v13

    .line 801
    .local v9, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    .line 803
    .local v13, "Z2IsOne":Z
    if-eqz v13, :cond_7

    .line 805
    move-object v14, v11

    .local v14, "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v4

    .local v15, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v5

    move-object/from16 v28, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v28

    .local v18, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 809
    .end local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 810
    .restart local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 811
    .restart local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v1

    .end local v1    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 812
    .local v1, "Z2Cubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v1, v19

    .line 815
    .local v1, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    move-object/from16 v19, v14

    .end local v14    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 816
    .local v14, "H":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v8

    .end local v8    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 819
    .local v8, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 821
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 828
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 831
    :cond_9
    move-object/from16 v21, v9

    .end local v9    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 832
    .local v9, "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v4

    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 833
    .local v4, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v6

    .end local v6    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 835
    .local v6, "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v15

    .end local v15    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v25, v5

    .end local v5    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 836
    .local v5, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v8, v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 838
    .local v15, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v14

    .line 839
    .local v26, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_a

    .line 841
    move-object/from16 v27, v1

    move-object/from16 v1, v26

    .end local v26    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    move-object/from16 v1, v26

    .end local v1    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_2

    .line 839
    .end local v27    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a
    move-object/from16 v27, v1

    move-object/from16 v1, v26

    .line 843
    .end local v26    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    if-nez v13, :cond_b

    .line 845
    invoke-virtual {v1, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 853
    :cond_b
    if-ne v1, v14, :cond_c

    .line 855
    move-object/from16 v17, v9

    move-object/from16 v13, v17

    goto :goto_3

    .line 853
    :cond_c
    move-object/from16 v13, v17

    .line 860
    .end local v4    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "V":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "HSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "H":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z2Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "U2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "S1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 863
    invoke-virtual {v0, v1, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 865
    .local v4, "W3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v1, v6, v8

    const/4 v9, 0x1

    aput-object v4, v6, v9

    move-object v4, v6

    .line 866
    .local v4, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4

    .line 869
    .end local v4    # "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v4, v9, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v4, v8

    .line 872
    .restart local v4    # "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v6, v2, v5, v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6

    .line 712
    .end local v1    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "Z3Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move v8, v9

    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v8

    .line 713
    .local v1, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v4, p1

    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v8

    .line 715
    .local v5, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 716
    .local v6, "Z1IsOne":Z
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 718
    .local v8, "Z2IsOne":Z
    if-eqz v6, :cond_e

    move-object v9, v7

    goto :goto_5

    :cond_e
    invoke-virtual {v7, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 719
    .local v9, "u1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    move-object/from16 v10, v25

    if-eqz v8, :cond_f

    move-object v11, v10

    goto :goto_6

    .end local v25    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_f
    invoke-virtual {v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 720
    .local v11, "u2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6
    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 721
    .local v12, "u":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v13, v23

    if-eqz v6, :cond_10

    move-object v14, v13

    goto :goto_7

    .end local v23    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_10
    invoke-virtual {v13, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 722
    .local v14, "v1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7
    move-object/from16 v15, v22

    if-eqz v8, :cond_11

    move-object/from16 v17, v15

    goto :goto_8

    .end local v22    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v15, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_11
    invoke-virtual {v15, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    :goto_8
    move-object/from16 v18, v17

    .line 723
    .local v18, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v3

    move-object/from16 v3, v18

    .end local v18    # "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "coord":I
    invoke-virtual {v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 726
    .local v4, "v":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 728
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 735
    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 739
    :cond_13
    if-eqz v6, :cond_14

    move-object/from16 v18, v5

    goto :goto_9

    :cond_14
    if-eqz v8, :cond_15

    move-object/from16 v18, v1

    goto :goto_9

    :cond_15
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    :goto_9
    move-object/from16 v19, v18

    .line 740
    .local v19, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v1

    .end local v1    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 741
    .local v1, "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v5

    .end local v5    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 742
    .local v5, "vCubed":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v21, v6

    .end local v6    # "Z1IsOne":Z
    .local v21, "Z1IsOne":Z
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 743
    .local v6, "vSquaredV2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v1

    .end local v1    # "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v23, v3

    move-object/from16 v3, v19

    .end local v19    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move/from16 v19, v8

    .end local v8    # "Z2IsOne":Z
    .local v19, "Z2IsOne":Z
    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 745
    .local v1, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 746
    .local v8, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12, v11, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 747
    .local v0, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 749
    .local v24, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v1

    .end local v1    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v26, v3

    const/4 v3, 0x1

    .end local v3    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v24, v3, v16

    invoke-direct {v1, v2, v8, v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 689
    .end local v0    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "u1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "u2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "u":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "v1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z2IsOne":Z
    .end local v20    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1IsOne":Z
    .end local v22    # "vSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "v2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3
    move/from16 v17, v3

    move-object v15, v4

    move-object v10, v5

    move-object v13, v6

    .end local v3    # "coord":I
    .end local v4    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v10    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v13    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "coord":I
    invoke-virtual {v13, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 691
    .local v1, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 693
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 700
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 703
    :cond_17
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 704
    .local v3, "gamma":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 705
    .local v4, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 707
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v6, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5
    .param p1, "Z"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1292
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1293
    .local v0, "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1298
    :cond_0
    if-nez p2, :cond_1

    .line 1300
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1303
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1304
    .local v1, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1305
    .local v2, "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1307
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_0

    .line 1311
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1313
    :goto_0
    return-object v1

    .line 1295
    .end local v1    # "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 650
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1269
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist eight(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1259
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1254
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 5

    .line 1318
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1319
    .local v0, "W":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_0

    .line 1322
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v0, v3

    aput-object v3, v2, v1

    .line 1324
    :cond_0
    return-object v0
.end method

.method public blacklist getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 2
    .param p1, "index"    # I

    .line 655
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 660
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 6

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    return-object p0

    .line 1279
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1280
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1282
    .local v1, "coord":I
    if-eqz v1, :cond_1

    .line 1284
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 1287
    :cond_1
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method protected blacklist three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1249
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 17

    .line 1094
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1096
    return-object v0

    .line 1099
    :cond_0
    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1100
    .local v1, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1102
    return-object v0

    .line 1105
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1106
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1108
    .local v3, "coord":I
    sparse-switch v3, :sswitch_data_0

    .line 1141
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1136
    .end local v16    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1112
    :sswitch_1
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1114
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1115
    .local v5, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1116
    .local v6, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1117
    .local v7, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1119
    .local v8, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1120
    .local v9, "d":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1125
    :cond_2
    invoke-virtual {v9, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1126
    .local v10, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1127
    .local v11, "I":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1128
    .local v12, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1130
    .local v13, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1131
    .local v14, "X4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1132
    .local v15, "Y4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v1, v2, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist timesPow2(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 18
    .param p1, "e"    # I

    .line 1148
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_a

    .line 1152
    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 1156
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1161
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1163
    .local v3, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1164
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1166
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1169
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    .line 1171
    .local v5, "coord":I
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1172
    .local v6, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1173
    .local v7, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    array-length v8, v8

    const/4 v9, 0x0

    if-ge v8, v2, :cond_3

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v9

    .line 1175
    .local v8, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    const-string/jumbo v11, "unsupported coordinate system"

    if-nez v10, :cond_4

    .line 1177
    packed-switch v5, :pswitch_data_0

    .line 1194
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1191
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1192
    goto :goto_1

    .line 1188
    :pswitch_2
    const/4 v10, 0x0

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1189
    goto :goto_1

    .line 1182
    :pswitch_3
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1183
    .local v10, "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1184
    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1185
    invoke-virtual {v0, v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1186
    nop

    .line 1198
    .end local v10    # "Z1Sq":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    :goto_1
    :pswitch_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v1, :cond_8

    .line 1200
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1202
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1205
    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1206
    .local v12, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1207
    .local v13, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1208
    .local v14, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1209
    .local v15, "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1210
    .local v2, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1211
    .local v9, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1213
    .local v1, "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-nez v16, :cond_6

    .line 1215
    invoke-virtual {v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1216
    move-object/from16 v16, v9

    .end local v9    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    goto :goto_3

    .line 1213
    .end local v16    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v9    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move-object/from16 v16, v9

    .line 1219
    .end local v9    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    move-object/from16 v17, v6

    .end local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1220
    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1221
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v14

    goto :goto_4

    :cond_7
    invoke-virtual {v14, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    :goto_4
    move-object v8, v6

    .line 1198
    .end local v1    # "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v6, v17

    const/4 v2, 0x1

    const/4 v9, 0x0

    goto :goto_2

    .line 1224
    .end local v10    # "i":I
    .end local v17    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    packed-switch v5, :pswitch_data_1

    .line 1238
    :pswitch_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1236
    :pswitch_6
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v9, 0x0

    aput-object v8, v2, v9

    const/4 v10, 0x1

    aput-object v6, v2, v10

    invoke-direct {v1, v3, v7, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1234
    :pswitch_7
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    new-array v2, v10, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v2, v9

    invoke-direct {v1, v3, v7, v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1230
    :pswitch_8
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1231
    .end local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1232
    .end local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    new-array v8, v10, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v8, v9

    invoke-direct {v7, v3, v1, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    .line 1227
    .end local v1    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_9
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1228
    .local v9, "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-direct {v10, v3, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v10

    .line 1154
    .end local v1    # "zInv":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "zInv2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "coord":I
    .end local v6    # "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "zInv3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    :goto_5
    return-object v0

    .line 1150
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 22

    .line 885
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    return-object v0

    .line 890
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 892
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 893
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 898
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 900
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 902
    .local v4, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1010
    :pswitch_0
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "unsupported coordinate system"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1005
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    return-object v5

    .line 946
    :pswitch_2
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v6

    .line 948
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 950
    .local v8, "Z1IsOne":Z
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 951
    .local v9, "Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 953
    .local v10, "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 954
    .local v11, "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 957
    .local v12, "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    const-wide/16 v14, 0x3

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 959
    if-eqz v8, :cond_2

    move-object v13, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 960
    .local v13, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v4, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 961
    .local v14, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 962
    .local v13, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v3

    goto :goto_2

    .line 965
    .end local v13    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 966
    .local v13, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 967
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_4

    .line 969
    invoke-virtual {v14, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move/from16 v17, v3

    goto :goto_1

    .line 971
    :cond_4
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-nez v15, :cond_6

    .line 973
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 974
    .local v15, "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 975
    .local v6, "Z1Pow4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v5

    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 977
    invoke-virtual {v6, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 981
    .end local v3    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_1

    .line 971
    .end local v6    # "Z1Pow4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .local v3, "coord":I
    .restart local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_6
    move/from16 v17, v3

    .line 985
    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    :goto_1
    invoke-virtual {v4, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v13, v3

    .line 988
    .local v13, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 989
    .local v3, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 991
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 992
    .local v6, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v8, :cond_7

    .line 994
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1000
    :cond_7
    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v18, v7

    const/4 v7, 0x1

    .end local v7    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v6, v7, v16

    invoke-direct {v15, v1, v3, v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v15

    .line 916
    .end local v5    # "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "a4Neg":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_3
    move/from16 v17, v3

    move/from16 v16, v6

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v16

    .line 918
    .local v3, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 921
    .local v5, "Z1IsOne":Z
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 922
    .local v6, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v5, :cond_8

    .line 924
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 926
    :cond_8
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 928
    if-eqz v5, :cond_9

    move-object v7, v2

    goto :goto_3

    :cond_9
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 929
    .local v7, "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3
    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_4

    :cond_a
    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 930
    .local v8, "t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4
    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 931
    .local v9, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 932
    .local v10, "_4B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 934
    .local v11, "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 935
    .local v12, "_2s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 936
    .local v13, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 937
    .local v14, "_2t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 938
    .local v3, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v5, :cond_b

    invoke-virtual {v0, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 939
    .local v15, "_4sSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5
    move/from16 v19, v5

    .end local v5    # "Z1IsOne":Z
    .local v19, "Z1IsOne":Z
    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 941
    .local v5, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v6

    .end local v6    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v21, v7

    const/4 v7, 0x1

    .end local v7    # "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v5, v7, v16

    invoke-direct {v6, v1, v13, v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6

    .line 906
    .end local v5    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "_4B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "h":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "_2s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2t":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_4sSquared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1IsOne":Z
    .end local v20    # "w":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "s":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :pswitch_4
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 907
    .local v3, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 908
    .local v5, "gamma":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 909
    .local v6, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 911
    .local v7, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v8, v1, v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected blacklist twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;
    .locals 19
    .param p1, "calculateW"    # Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .local v3, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1331
    .local v5, "W1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1332
    .local v6, "X1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1333
    .local v7, "M":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1334
    .local v8, "_2Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1335
    .local v9, "_2Y1Squared":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1336
    .local v10, "S":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1337
    .local v11, "X3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1338
    .local v12, "_4T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1339
    .local v13, "_8T":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1340
    .local v14, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_0

    invoke-virtual {v13, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 1341
    .local v15, "W3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1343
    .local v16, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    move-object/from16 v18, v1

    .end local v1    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v17, 0x0

    aput-object v16, v1, v17

    const/16 v17, 0x1

    aput-object v15, v1, v17

    invoke-direct {v4, v0, v11, v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 19
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1019
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1021
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    return-object v1

    .line 1025
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1030
    :cond_2
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1031
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1033
    return-object v1

    .line 1036
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1037
    .local v3, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1039
    .local v4, "coord":I
    sparse-switch v4, :sswitch_data_0

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1083
    :sswitch_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 1043
    :sswitch_1
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1044
    .local v5, "X1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1046
    .local v7, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "dx":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1048
    .local v9, "dy":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1050
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1053
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1057
    :cond_4
    return-object v0

    .line 1065
    :cond_5
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1066
    .local v11, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1067
    .local v12, "d":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1069
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 1072
    :cond_6
    invoke-virtual {v12, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1073
    .local v13, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1074
    .local v14, "I":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1075
    .local v15, "L1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v4

    .end local v4    # "coord":I
    .local v16, "coord":I
    invoke-virtual {v0, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1076
    .local v4, "L2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move-object/from16 v17, v7

    .end local v7    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1077
    .local v0, "X4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1079
    .local v7, "Y4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-direct {v2, v3, v0, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected blacklist two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 1244
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
