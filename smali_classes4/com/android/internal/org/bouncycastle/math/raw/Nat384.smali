.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat384;
.super Ljava/lang/Object;
.source "Nat384.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .locals 16
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 12
    move-object/from16 v6, p2

    invoke-static/range {p0 .. p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 13
    const/4 v1, 0x6

    const/4 v3, 0x6

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([II[II[II)V

    .line 15
    const/4 v0, 0x6

    const/16 v1, 0xc

    invoke-static {v6, v0, v6, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v2

    .line 16
    .local v2, "c18":I
    const/4 v3, 0x0

    invoke-static {v6, v3, v6, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 17
    .local v4, "c12":I
    const/16 v5, 0x12

    invoke-static {v6, v5, v6, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v7

    add-int/2addr v2, v7

    .line 19
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    .local v13, "dx":[I
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v14

    .line 20
    .local v14, "dy":[I
    const/4 v8, 0x6

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v9, p0

    move-object v11, v13

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v15

    move-object/from16 v7, p1

    move-object/from16 v9, p1

    move-object v11, v14

    invoke-static/range {v7 .. v12}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v7

    if-eq v15, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v3

    .line 22
    .local v7, "neg":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v8

    .line 23
    .local v8, "tt":[I
    invoke-static {v13, v14, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 25
    if-eqz v7, :cond_1

    invoke-static {v1, v8, v3, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v1, v8, v3, v6, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    .line 26
    const/16 v0, 0x18

    invoke-static {v0, v2, v6, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 27
    return-void
.end method

.method public static blacklist square([I[I)V
    .locals 13
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 31
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 32
    const/4 v0, 0x6

    const/16 v1, 0xc

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([II[II)V

    .line 34
    invoke-static {p1, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v2

    .line 35
    .local v2, "c18":I
    const/4 v3, 0x0

    invoke-static {p1, v3, p1, v0, v3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v4

    add-int/2addr v4, v2

    .line 36
    .local v4, "c12":I
    const/16 v5, 0x12

    invoke-static {p1, v5, p1, v1, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v6

    add-int/2addr v2, v6

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v12

    .line 39
    .local v12, "dx":[I
    const/4 v7, 0x6

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v8, p0

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    .line 41
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v6

    .line 42
    .local v6, "tt":[I
    invoke-static {v12, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 44
    invoke-static {v1, v6, v3, p1, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v2, v0

    .line 45
    const/16 v0, 0x18

    invoke-static {v0, v2, p1, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    .line 46
    return-void
.end method
