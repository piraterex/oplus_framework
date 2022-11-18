.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# static fields
.field public static final whitelist NOTHING:[I

.field public static final greylist-max-o VIEW_STATE_ACCELERATED:I = 0x40

.field public static final greylist-max-o VIEW_STATE_ACTIVATED:I = 0x20

.field public static final greylist-max-o VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final greylist-max-o VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final greylist-max-o VIEW_STATE_ENABLED:I = 0x8

.field public static final greylist-max-o VIEW_STATE_FOCUSED:I = 0x4

.field public static final greylist-max-o VIEW_STATE_HOVERED:I = 0x80

.field static final greylist-max-o VIEW_STATE_IDS:[I

.field public static final greylist-max-o VIEW_STATE_PRESSED:I = 0x10

.field public static final greylist-max-o VIEW_STATE_SELECTED:I = 0x2

.field private static final greylist-max-o VIEW_STATE_SETS:[[I

.field public static final greylist-max-o VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final whitelist WILD_CARD:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 66
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 80
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v2, v2

    if-ne v1, v2, :cond_6

    .line 85
    array-length v0, v0

    new-array v0, v0, [I

    .line 86
    .local v0, "orderedIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 87
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    aget v2, v2, v1

    .line 88
    .local v2, "viewState":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 89
    aget v6, v5, v4

    if-ne v6, v2, :cond_0

    .line 90
    mul-int/lit8 v6, v1, 0x2

    aput v2, v0, v6

    .line 91
    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v7, v4, 0x1

    aget v5, v5, v7

    aput v5, v0, v6

    .line 88
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 86
    .end local v2    # "viewState":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_2
    sget-object v1, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 97
    .local v1, "NUM_BITS":I
    shl-int v2, v3, v1

    new-array v2, v2, [[I

    sput-object v2, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 98
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    sget-object v4, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 100
    .local v4, "numBits":I
    new-array v5, v4, [I

    .line 101
    .local v5, "set":[I
    const/4 v6, 0x0

    .line 102
    .local v6, "pos":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    array-length v8, v0

    if-ge v7, v8, :cond_4

    .line 103
    add-int/lit8 v8, v7, 0x1

    aget v8, v0, v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_3

    .line 104
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "pos":I
    .local v8, "pos":I
    aget v9, v0, v7

    aput v9, v5, v6

    move v6, v8

    .line 102
    .end local v8    # "pos":I
    .restart local v6    # "pos":I
    :cond_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    .line 107
    .end local v7    # "j":I
    :cond_4
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    aput-object v5, v7, v2

    .line 98
    .end local v4    # "numBits":I
    .end local v5    # "set":[I
    .end local v6    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .end local v0    # "orderedIds":[I
    .end local v1    # "NUM_BITS":I
    .end local v2    # "i":I
    :cond_5
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    .line 130
    new-array v1, v3, [I

    aput v0, v1, v0

    sput-object v1, Landroid/util/StateSet;->NOTHING:[I

    return-void

    .line 81
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o containsAttribute([[II)Z
    .locals 8
    .param p0, "stateSpecs"    # [[I
    .param p1, "attr"    # I

    .line 239
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 240
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 241
    .local v3, "spec":[I
    if-nez v3, :cond_0

    .line 242
    goto :goto_3

    .line 244
    :cond_0
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 245
    .local v6, "specAttr":I
    if-eq v6, p1, :cond_2

    neg-int v7, v6

    if-ne v7, p1, :cond_1

    goto :goto_2

    .line 244
    .end local v6    # "specAttr":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    .restart local v6    # "specAttr":I
    :cond_2
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 240
    .end local v3    # "spec":[I
    .end local v6    # "specAttr":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_4
    :goto_3
    return v0
.end method

.method public static whitelist dump([I)Ljava/lang/String;
    .locals 4
    .param p0, "states"    # [I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    .line 268
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 270
    aget v3, p0, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 290
    :sswitch_0
    const-string v3, "A "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :sswitch_1
    const-string v3, "P "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    goto :goto_1

    .line 278
    :sswitch_2
    const-string v3, "S "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    goto :goto_1

    .line 287
    :sswitch_3
    const-string v3, "C "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    goto :goto_1

    .line 284
    :sswitch_4
    const-string v3, "E "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    goto :goto_1

    .line 272
    :sswitch_5
    const-string v3, "W "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    goto :goto_1

    .line 281
    :sswitch_6
    const-string v3, "F "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    nop

    .line 268
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_6
        0x101009d -> :sswitch_5
        0x101009e -> :sswitch_4
        0x10100a0 -> :sswitch_3
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x10102fe -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-o get(I)[I
    .locals 2
    .param p0, "mask"    # I

    .line 113
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 116
    aget-object v0, v0, p0

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid state set mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isWildCard([I)Z
    .locals 2
    .param p0, "stateSetOrSpec"    # [I

    .line 138
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, p0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static whitelist stateSetMatches([II)Z
    .locals 5
    .param p0, "stateSpec"    # [I
    .param p1, "state"    # I

    .line 209
    array-length v0, p0

    .line 210
    .local v0, "stateSpecSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 211
    aget v3, p0, v1

    .line 212
    .local v3, "stateSpecState":I
    if-nez v3, :cond_0

    .line 214
    return v2

    .line 216
    :cond_0
    const/4 v2, 0x0

    if-lez v3, :cond_1

    .line 217
    if-eq p1, v3, :cond_2

    .line 218
    return v2

    .line 222
    :cond_1
    neg-int v4, v3

    if-ne p1, v4, :cond_2

    .line 224
    return v2

    .line 210
    .end local v3    # "stateSpecState":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method public static whitelist stateSetMatches([I[I)Z
    .locals 10
    .param p0, "stateSpec"    # [I
    .param p1, "stateSet"    # [I

    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 150
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 152
    :cond_2
    array-length v2, p0

    .line 153
    .local v2, "stateSpecSize":I
    array-length v3, p1

    .line 154
    .local v3, "stateSetSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_a

    .line 155
    aget v5, p0, v4

    .line 156
    .local v5, "stateSpecState":I
    if-nez v5, :cond_3

    .line 158
    return v1

    .line 161
    :cond_3
    if-lez v5, :cond_4

    .line 162
    const/4 v6, 0x1

    .local v6, "mustMatch":Z
    goto :goto_1

    .line 165
    .end local v6    # "mustMatch":Z
    :cond_4
    const/4 v6, 0x0

    .line 166
    .restart local v6    # "mustMatch":Z
    neg-int v5, v5

    .line 168
    :goto_1
    const/4 v7, 0x0

    .line 169
    .local v7, "found":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v3, :cond_8

    .line 170
    aget v9, p1, v8

    .line 171
    .local v9, "state":I
    if-nez v9, :cond_5

    .line 173
    if-eqz v6, :cond_8

    .line 175
    return v0

    .line 181
    :cond_5
    if-ne v9, v5, :cond_7

    .line 182
    if-eqz v6, :cond_6

    .line 183
    const/4 v7, 0x1

    .line 185
    goto :goto_3

    .line 188
    :cond_6
    return v0

    .line 169
    .end local v9    # "state":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 192
    .end local v8    # "j":I
    :cond_8
    :goto_3
    if-eqz v6, :cond_9

    if-nez v7, :cond_9

    .line 195
    return v0

    .line 154
    .end local v5    # "stateSpecState":I
    .end local v6    # "mustMatch":Z
    .end local v7    # "found":Z
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .end local v4    # "i":I
    :cond_a
    return v1
.end method

.method public static whitelist trimStateSet([II)[I
    .locals 2
    .param p0, "states"    # [I
    .param p1, "newSize"    # I

    .line 255
    array-length v0, p0

    if-ne v0, p1, :cond_0

    .line 256
    return-object p0

    .line 259
    :cond_0
    new-array v0, p1, [I

    .line 260
    .local v0, "trimmedStates":[I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    return-object v0
.end method
