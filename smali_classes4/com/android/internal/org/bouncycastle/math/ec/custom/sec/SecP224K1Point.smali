.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224K1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 31
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    return-object v1

    .line 37
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    return-object v0

    .line 41
    :cond_1
    if-ne v0, v1, :cond_2

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 46
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 48
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 49
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 51
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 52
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 55
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v10

    .line 56
    .local v10, "tt1":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v11

    .line 57
    .local v11, "t2":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 58
    .local v12, "t3":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    .line 60
    .local v13, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v14

    .line 62
    .local v14, "Z1IsOne":Z
    if-eqz v14, :cond_3

    .line 64
    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 65
    .local v15, "U2":[I
    iget-object v8, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .local v8, "S2":[I
    goto :goto_0

    .line 69
    .end local v8    # "S2":[I
    .end local v15    # "U2":[I
    :cond_3
    move-object v8, v12

    .line 70
    .restart local v8    # "S2":[I
    iget-object v15, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v15, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 72
    move-object v15, v11

    .line 73
    .restart local v15    # "U2":[I
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 75
    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 76
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 79
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v0

    .line 81
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_4

    .line 83
    iget-object v1, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 84
    .local v1, "U1":[I
    move-object/from16 v17, v1

    .end local v1    # "U1":[I
    .local v17, "U1":[I
    iget-object v1, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v18, v6

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v30

    .local v1, "S1":[I
    goto :goto_1

    .line 88
    .end local v1    # "S1":[I
    .end local v17    # "U1":[I
    :cond_4
    move-object v1, v13

    .line 89
    .restart local v1    # "S1":[I
    move-object/from16 v17, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    .local v17, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 91
    move-object v5, v10

    .line 92
    .local v5, "U1":[I
    move-object/from16 v18, v6

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    .local v18, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 94
    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 95
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v30

    .line 98
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_1
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    .line 99
    .local v6, "H":[I
    invoke-static {v1, v15, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 101
    move-object/from16 v19, v11

    .line 102
    .local v19, "R":[I
    move-object/from16 v20, v3

    move-object/from16 v3, v19

    .end local v19    # "R":[I
    .local v3, "R":[I
    .local v20, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-static {v5, v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 105
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 107
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 114
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 117
    :cond_6
    move-object/from16 v19, v12

    .line 118
    .local v19, "HSquared":[I
    move-object/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "HSquared":[I
    .local v4, "HSquared":[I
    .local v21, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 120
    move-object/from16 v19, v8

    .end local v8    # "S2":[I
    .local v19, "S2":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 121
    .local v8, "G":[I
    invoke-static {v4, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 123
    move-object/from16 v22, v12

    .line 124
    .local v22, "V":[I
    move-object/from16 v23, v11

    move-object/from16 v11, v22

    .end local v22    # "V":[I
    .local v11, "V":[I
    .local v23, "t2":[I
    invoke-static {v4, v1, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 126
    invoke-static {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 127
    invoke-static {v5, v8, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 129
    move-object/from16 v22, v1

    .end local v1    # "U1":[I
    .local v22, "U1":[I
    invoke-static {v11, v11, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v1

    .line 130
    .local v1, "c":I
    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    .line 132
    move/from16 v24, v1

    .end local v1    # "c":I
    .local v24, "c":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 133
    .local v1, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    move-object/from16 v25, v4

    .end local v4    # "HSquared":[I
    .local v25, "HSquared":[I
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 134
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v26, v5

    .end local v5    # "S1":[I
    .local v26, "S1":[I
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v4, v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 136
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 137
    .local v4, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v27, v8

    .end local v8    # "G":[I
    .local v27, "G":[I
    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v11, v5, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 138
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v3, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiplyAddToExt([I[I[I)V

    .line 139
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce([I[I)V

    .line 141
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 142
    .local v5, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    if-nez v14, :cond_7

    .line 144
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "R":[I
    .local v28, "R":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object/from16 v29, v6

    .end local v6    # "H":[I
    .local v29, "H":[I
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    goto :goto_2

    .line 142
    .end local v28    # "R":[I
    .end local v29    # "H":[I
    .restart local v3    # "R":[I
    .restart local v6    # "H":[I
    :cond_7
    move-object/from16 v28, v3

    move-object/from16 v29, v6

    .line 146
    .end local v3    # "R":[I
    .end local v6    # "H":[I
    .restart local v28    # "R":[I
    .restart local v29    # "H":[I
    :goto_2
    if-nez v0, :cond_8

    .line 148
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v3, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 151
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 153
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-direct {v6, v2, v1, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    return-object p0

    .line 258
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 244
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 16

    .line 159
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    return-object v0

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 166
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 167
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 172
    :cond_1
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 176
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    .line 177
    .local v6, "Y1Squared":[I
    iget-object v7, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v7, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 179
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 180
    .local v7, "T":[I
    invoke-static {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 182
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 183
    .local v8, "M":[I
    iget-object v9, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 184
    invoke-static {v8, v8, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v9

    .line 185
    .local v9, "c":I
    invoke-static {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    .line 187
    move-object v10, v6

    .line 188
    .local v10, "S":[I
    iget-object v11, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v6, v11, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 189
    const/4 v11, 0x2

    const/4 v12, 0x7

    invoke-static {v12, v10, v11, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v9

    .line 190
    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    .line 192
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v11

    .line 193
    .local v11, "t1":[I
    const/4 v13, 0x3

    invoke-static {v12, v7, v13, v5, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v9

    .line 194
    invoke-static {v9, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->reduce32(I[I)V

    .line 196
    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 197
    .local v12, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v8, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 198
    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 199
    iget-object v13, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v13, v10, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 201
    new-instance v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v13, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 202
    .local v13, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v14, v12, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v10, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 203
    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v14, v8, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 204
    iget-object v14, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v14, v11, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 206
    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v14, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    .line 207
    .local v14, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v15, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v15, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->twice([I[I)V

    .line 208
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    iget-object v5, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v0, v14, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v5, v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 213
    :cond_2
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v15, 0x0

    aput-object v14, v5, v15

    invoke-direct {v0, v1, v12, v13, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 218
    if-ne p0, p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    return-object p1

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 232
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    return-object p1

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP224K1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
