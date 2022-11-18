.class public Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP384R1Point.java"


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
    .locals 30
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    return-object v1

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    return-object v0

    .line 40
    :cond_1
    if-ne v0, v1, :cond_2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 45
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 47
    .local v2, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 48
    .local v4, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v5, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 50
    .local v6, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 51
    .local v7, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 54
    .local v9, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v10, 0x18

    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 55
    .local v11, "tt1":[I
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 56
    .local v10, "tt2":[I
    const/16 v12, 0xc

    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 57
    .local v13, "t3":[I
    invoke-static {v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 59
    .local v14, "t4":[I
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v15

    .line 61
    .local v15, "Z1IsOne":Z
    if-eqz v15, :cond_3

    .line 63
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 64
    .local v8, "U2":[I
    iget-object v12, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .local v12, "S2":[I
    goto :goto_0

    .line 68
    .end local v8    # "U2":[I
    .end local v12    # "S2":[I
    :cond_3
    move-object v12, v13

    .line 69
    .restart local v12    # "S2":[I
    iget-object v8, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v8, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 71
    move-object v8, v10

    .line 72
    .restart local v8    # "U2":[I
    iget-object v0, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v0, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 74
    iget-object v0, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 75
    iget-object v0, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v0, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 78
    :goto_0
    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v0

    .line 80
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_4

    .line 82
    iget-object v1, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 83
    .local v1, "U1":[I
    move-object/from16 v17, v1

    .end local v1    # "U1":[I
    .local v17, "U1":[I
    iget-object v1, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v18, v6

    move-object/from16 v29, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v29

    .local v1, "S1":[I
    goto :goto_1

    .line 87
    .end local v1    # "S1":[I
    .end local v17    # "U1":[I
    :cond_4
    move-object v1, v14

    .line 88
    .restart local v1    # "S1":[I
    move-object/from16 v17, v5

    .end local v5    # "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v17, "X2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v5, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 90
    move-object v5, v11

    .line 91
    .local v5, "U1":[I
    move-object/from16 v18, v6

    .end local v6    # "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v18, "Y2":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v6, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 93
    iget-object v6, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 94
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object/from16 v29, v5

    move-object v5, v1

    move-object/from16 v1, v29

    .line 97
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_1
    move-object/from16 v19, v3

    const/16 v6, 0xc

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v19, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 98
    .local v3, "H":[I
    invoke-static {v1, v8, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 100
    move-object/from16 v20, v4

    .end local v4    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v20, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 101
    .local v4, "R":[I
    invoke-static {v5, v12, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 104
    invoke-static {v6, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 106
    invoke-static {v6, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 113
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 116
    :cond_6
    move-object v6, v13

    .line 117
    .local v6, "HSquared":[I
    invoke-static {v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 119
    move-object/from16 v21, v8

    const/16 v16, 0xc

    .end local v8    # "U2":[I
    .local v21, "U2":[I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 120
    .local v8, "G":[I
    invoke-static {v6, v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 122
    move-object/from16 v22, v13

    .line 123
    .local v22, "V":[I
    move-object/from16 v23, v12

    move-object/from16 v12, v22

    .end local v22    # "V":[I
    .local v12, "V":[I
    .local v23, "S2":[I
    invoke-static {v6, v1, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 125
    invoke-static {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    .line 126
    invoke-static {v5, v8, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 128
    move-object/from16 v22, v1

    const/16 v1, 0xc

    .end local v1    # "U1":[I
    .local v22, "U1":[I
    invoke-static {v1, v12, v12, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v1

    .line 129
    .local v1, "c":I
    invoke-static {v1, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 131
    move/from16 v16, v1

    .end local v1    # "c":I
    .local v16, "c":I
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 132
    .local v1, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v24, v5

    .end local v5    # "S1":[I
    .local v24, "S1":[I
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 133
    iget-object v5, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v25, v6

    .end local v6    # "HSquared":[I
    .local v25, "HSquared":[I
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v8, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 135
    new-instance v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v5, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 136
    .local v5, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v6, v1, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v26, v8

    .end local v8    # "G":[I
    .local v26, "G":[I
    iget-object v8, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 137
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v4, v10}, Lcom/android/internal/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 138
    invoke-static {v11, v10, v11}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    .line 139
    iget-object v6, v5, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v11, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 141
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v6, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 142
    .local v6, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v15, :cond_7

    .line 144
    iget-object v8, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v27, v3

    .end local v3    # "H":[I
    .local v27, "H":[I
    iget-object v3, v7, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v28, v4

    .end local v4    # "R":[I
    .local v28, "R":[I
    iget-object v4, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v8, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    goto :goto_2

    .line 142
    .end local v27    # "H":[I
    .end local v28    # "R":[I
    .restart local v3    # "H":[I
    .restart local v4    # "R":[I
    :cond_7
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 146
    .end local v3    # "H":[I
    .end local v4    # "R":[I
    .restart local v27    # "H":[I
    .restart local v28    # "R":[I
    :goto_2
    if-nez v0, :cond_8

    .line 148
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v4, v9, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v8, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v4, v8}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 151
    :cond_8
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    .line 153
    .local v3, "zs":[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4
.end method

.method protected blacklist detach()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 5

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return-object p0

    .line 270
    :cond_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 19

    .line 158
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    return-object v0

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 165
    .local v1, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 166
    .local v2, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 171
    :cond_1
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v3, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 174
    .local v4, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v6, 0xc

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v7

    .line 175
    .local v7, "t1":[I
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 177
    .local v8, "t2":[I
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 178
    .local v9, "Y1Squared":[I
    iget-object v10, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v9}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 180
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 181
    .local v10, "T":[I
    invoke-static {v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 183
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v11

    .line 185
    .local v11, "Z1IsOne":Z
    iget-object v12, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 186
    .local v12, "Z1Squared":[I
    if-nez v11, :cond_2

    .line 188
    move-object v12, v8

    .line 189
    iget-object v13, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v12}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 192
    :cond_2
    iget-object v13, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v12, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 194
    move-object v13, v8

    .line 195
    .local v13, "M":[I
    iget-object v14, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v12, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    .line 196
    invoke-static {v13, v7, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 197
    invoke-static {v6, v13, v13, v13}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v14

    .line 198
    .local v14, "c":I
    invoke-static {v14, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 200
    move-object v15, v9

    .line 201
    .local v15, "S":[I
    iget-object v5, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v9, v5, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 202
    const/4 v5, 0x2

    const/4 v0, 0x0

    invoke-static {v6, v15, v5, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v5

    .line 203
    .end local v14    # "c":I
    .local v5, "c":I
    invoke-static {v5, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 205
    const/4 v14, 0x3

    invoke-static {v6, v10, v14, v0, v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v5

    .line 206
    invoke-static {v5, v7}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 208
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 209
    .local v0, "X3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v6}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 210
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 211
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v15, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 213
    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v6, v15}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 214
    .local v6, "Y3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v16, v3

    .end local v3    # "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v16, "X1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v15, v14, v3}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 215
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v14, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 216
    iget-object v3, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v14, v6, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v7, v14}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 218
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v13}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 219
    .local v3, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v14, v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v17, v2

    .end local v2    # "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v17, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v14, v2}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    .line 220
    if-nez v11, :cond_3

    .line 222
    iget-object v2, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v14, v4, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v18, v4

    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v18, "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v3, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v14, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    goto :goto_0

    .line 220
    .end local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    :cond_3
    move-object/from16 v18, v4

    .line 225
    .end local v4    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v18    # "Z1":Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    :goto_0
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v14, 0x0

    aput-object v3, v4, v14

    invoke-direct {v2, v1, v0, v6, v4}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method public blacklist twicePlus(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 230
    if-ne p0, p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    return-object p1

    .line 238
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 244
    .local v0, "Y1":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    return-object p1

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
