.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 17
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 29
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    return-object v1

    .line 35
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    return-object v0

    .line 39
    :cond_1
    if-ne v0, v1, :cond_2

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 44
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 46
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 47
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 49
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 50
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 52
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v10, 0x11

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 53
    .local v11, "t1":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 54
    .local v12, "t2":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 55
    .local v13, "t3":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 57
    .local v14, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v15

    .line 59
    .local v15, "Z1IsOne":Z
    if-eqz v15, :cond_3

    .line 61
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 62
    .local v8, "U2":[I
    iget-object v10, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .local v10, "S2":[I
    goto :goto_0

    .line 66
    .end local v8    # "U2":[I
    .end local v10    # "S2":[I
    :cond_3
    move-object v10, v13

    .line 67
    .restart local v10    # "S2":[I
    iget-object v8, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 69
    move-object v8, v12

    .line 70
    .restart local v8    # "U2":[I
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 72
    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 73
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 76
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v0

    .line 78
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_4

    .line 80
    iget-object v1, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 81
    .local v1, "U1":[I
    move-object/from16 v17, v1

    .end local v1    # "U1":[I
    .local v17, "U1":[I
    iget-object v1, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v18, v6

    move-object/from16 v28, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v28

    .local v1, "S1":[I
    goto :goto_1

    .line 85
    .end local v1    # "S1":[I
    .end local v17    # "U1":[I
    :cond_4
    move-object v1, v14

    .line 86
    .restart local v1    # "S1":[I
    move-object/from16 v17, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v17, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 88
    move-object v5, v11

    .line 89
    .local v5, "U1":[I
    move-object/from16 v18, v6

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v18, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 91
    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 92
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    move-object/from16 v28, v5

    move-object v5, v1

    move-object/from16 v1, v28

    .line 95
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_1
    move-object/from16 v19, v3

    const/16 v6, 0x11

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v19, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 96
    .local v3, "H":[I
    invoke-static {v1, v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 98
    move-object/from16 v20, v12

    .line 99
    .local v20, "R":[I
    move-object/from16 v6, v20

    .end local v20    # "R":[I
    .local v6, "R":[I
    invoke-static {v5, v10, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 102
    move-object/from16 v20, v4

    const/16 v4, 0x11

    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v20, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v4, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 104
    invoke-static {v4, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 111
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 114
    :cond_6
    move-object v4, v13

    .line 115
    .local v4, "HSquared":[I
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 117
    move-object/from16 v21, v8

    const/16 v16, 0x11

    .end local v8    # "U2":[I
    .local v21, "U2":[I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 118
    .local v8, "G":[I
    invoke-static {v4, v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 120
    move-object/from16 v16, v13

    .line 121
    .local v16, "V":[I
    move-object/from16 v22, v10

    move-object/from16 v10, v16

    .end local v16    # "V":[I
    .local v10, "V":[I
    .local v22, "S2":[I
    invoke-static {v4, v1, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 123
    invoke-static {v5, v8, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 125
    move-object/from16 v16, v1

    .end local v1    # "U1":[I
    .local v16, "U1":[I
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 126
    .local v1, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v23, v4

    .end local v4    # "HSquared":[I
    .local v23, "HSquared":[I
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 127
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v24, v5

    .end local v5    # "S1":[I
    .local v24, "S1":[I
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v8, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 128
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 129
    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v10, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 131
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 132
    .local v4, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v25, v8

    .end local v8    # "G":[I
    .local v25, "G":[I
    iget-object v8, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v5, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 133
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v6, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 134
    iget-object v5, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v12, v11, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 136
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 137
    .local v5, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v15, :cond_7

    .line 139
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v26, v3

    .end local v3    # "H":[I
    .local v26, "H":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v27, v6

    .end local v6    # "R":[I
    .local v27, "R":[I
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    goto :goto_2

    .line 137
    .end local v26    # "H":[I
    .end local v27    # "R":[I
    .restart local v3    # "H":[I
    .restart local v6    # "R":[I
    :cond_7
    move-object/from16 v26, v3

    move-object/from16 v27, v6

    .line 141
    .end local v3    # "H":[I
    .end local v6    # "R":[I
    .restart local v26    # "H":[I
    .restart local v27    # "R":[I
    :goto_2
    if-nez v0, :cond_8

    .line 143
    iget-object v3, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 146
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 148
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-direct {v6, v2, v1, v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "a"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 284
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

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 289
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    return-object p0

    .line 294
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist three(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 250
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 18

    .line 153
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    return-object v0

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 160
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 161
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 166
    :cond_1
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 168
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v6, 0x11

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v7

    .line 169
    .local v7, "t1":[I
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 171
    .local v8, "t2":[I
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 172
    .local v9, "Y1Squared":[I
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 174
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 175
    .local v10, "T":[I
    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 177
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v11

    .line 179
    .local v11, "Z1IsOne":Z
    iget-object v12, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 180
    .local v12, "Z1Squared":[I
    if-nez v11, :cond_2

    .line 182
    move-object v12, v8

    .line 183
    iget-object v13, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 186
    :cond_2
    iget-object v13, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 188
    move-object v13, v8

    .line 189
    .local v13, "M":[I
    iget-object v14, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 190
    invoke-static {v13, v7, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 191
    invoke-static {v6, v13, v13, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    .line 192
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 194
    move-object v14, v9

    .line 195
    .local v14, "S":[I
    iget-object v15, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v9, v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 196
    const/4 v15, 0x2

    invoke-static {v6, v14, v15, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    .line 197
    invoke-static {v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 199
    const/4 v15, 0x3

    invoke-static {v6, v10, v15, v5, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    .line 200
    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 202
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 203
    .local v6, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v15, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 204
    iget-object v15, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v14, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 205
    iget-object v5, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v15, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v14, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 207
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v5, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 208
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v15, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v14, v15, v0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 209
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v13, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 210
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v0, v7, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 212
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v0, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 213
    .local v0, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v15, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v16, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v16, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    .line 214
    if-nez v11, :cond_3

    .line 216
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v17, v3

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v17, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v15, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    goto :goto_0

    .line 214
    .end local v17    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :cond_3
    move-object/from16 v17, v3

    .line 219
    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v17    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    :goto_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    invoke-direct {v2, v1, v6, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 224
    if-ne p0, p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    return-object p1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 238
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 240
    return-object p1

    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist two(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 259
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
