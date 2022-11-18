.class public Landroid/text/method/MultiTapKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "MultiTapKeyListener.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/MultiTapKeyListener$Timeout;
    }
.end annotation


# static fields
.field private static greylist-max-o sInstance:[Landroid/text/method/MultiTapKeyListener;

.field private static final greylist-max-o sRecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAutoText:Z

.field private greylist-max-o mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/MultiTapKeyListener;

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 50
    const/16 v1, 0x8

    const-string v2, ".,1!@#$%^&*:/?\'=()"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    const/16 v1, 0x9

    const-string v2, "abc2ABC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    const/16 v1, 0xa

    const-string v2, "def3DEF"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    const/16 v1, 0xb

    const-string/jumbo v2, "ghi4GHI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    const/16 v1, 0xc

    const-string/jumbo v2, "jkl5JKL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    const/16 v1, 0xd

    const-string/jumbo v2, "mno6MNO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    const/16 v1, 0xe

    const-string/jumbo v2, "pqrs7PQRS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    const/16 v1, 0xf

    const-string/jumbo v2, "tuv8TUV"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    const/16 v1, 0x10

    const-string/jumbo v2, "wxyz9WXYZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    const/4 v1, 0x7

    const-string v2, "0+"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    const/16 v1, 0x12

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 0
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;
    .param p2, "autotext"    # Z

    .line 64
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 66
    iput-boolean p2, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    .line 67
    return-void
.end method

.method public static whitelist getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/MultiTapKeyListener;
    .locals 3
    .param p0, "autotext"    # Z
    .param p1, "cap"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 75
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    .line 77
    .local v0, "off":I
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v2, v1, v0

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Landroid/text/method/MultiTapKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/MultiTapKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 81
    :cond_0
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->sInstance:[Landroid/text/method/MultiTapKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static greylist-max-o removeTimeouts(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "buf"    # Landroid/text/Spannable;

    .line 246
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/MultiTapKeyListener$Timeout;

    .line 248
    .local v0, "timeout":[Landroid/text/method/MultiTapKeyListener$Timeout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 249
    aget-object v2, v0, v1

    .line 251
    .local v2, "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    invoke-virtual {v2, v2}, Landroid/text/method/MultiTapKeyListener$Timeout;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/method/MultiTapKeyListener$Timeout;->-$$Nest$fputmBuffer(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)V

    .line 253
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 248
    .end local v2    # "t":Landroid/text/method/MultiTapKeyListener$Timeout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist getInputType()I
    .locals 2

    .line 85
    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/MultiTapKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/MultiTapKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "content"    # Landroid/text/Editable;
    .param p3, "keyCode"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v1, 0x0

    .line 93
    .local v1, "pref":I
    if-eqz p1, :cond_0

    .line 94
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v1

    move v9, v1

    goto :goto_0

    .line 93
    :cond_0
    move v9, v1

    .line 98
    .end local v1    # "pref":I
    .local v9, "pref":I
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 99
    .local v1, "a":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 101
    .local v2, "b":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 102
    .local v10, "selStart":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 105
    .end local v1    # "a":I
    .end local v2    # "b":I
    .local v11, "selEnd":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 106
    .local v12, "activeStart":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    .line 113
    .local v13, "activeEnd":I
    sget-object v1, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    ushr-int/lit8 v14, v1, 0x18

    .line 116
    .local v14, "rec":I
    const/16 v1, 0x11

    const/4 v15, 0x1

    if-ne v12, v10, :cond_6

    if-ne v13, v11, :cond_6

    sub-int v2, v11, v10

    if-ne v2, v15, :cond_6

    if-ltz v14, :cond_6

    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    .line 118
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v14, v3, :cond_6

    .line 119
    if-ne v8, v1, :cond_2

    .line 120
    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 122
    .local v3, "current":C
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    nop

    .line 124
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 125
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 126
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 128
    return v15

    .line 130
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    nop

    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-interface {v7, v10, v11, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 133
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 134
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 136
    return v15

    .line 140
    .end local v3    # "current":C
    :cond_2
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ne v3, v14, :cond_4

    .line 141
    invoke-virtual {v2, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 142
    .local v6, "val":Ljava/lang/String;
    invoke-interface {v7, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    .line 143
    .local v5, "ch":C
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 145
    .local v3, "ix":I
    if-ltz v3, :cond_3

    .line 146
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    rem-int v16, v1, v2

    .line 148
    .end local v3    # "ix":I
    .local v16, "ix":I
    add-int/lit8 v17, v16, 0x1

    move-object/from16 v1, p2

    move v2, v10

    move v3, v11

    move-object v4, v6

    move/from16 v18, v5

    .end local v5    # "ch":C
    .local v18, "ch":C
    move/from16 v5, v16

    move-object/from16 v19, v6

    .end local v6    # "val":Ljava/lang/String;
    .local v19, "val":Ljava/lang/String;
    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 149
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 150
    new-instance v1, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v1, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 152
    return v15

    .line 145
    .end local v16    # "ix":I
    .end local v18    # "ch":C
    .end local v19    # "val":Ljava/lang/String;
    .restart local v3    # "ix":I
    .restart local v5    # "ch":C
    .restart local v6    # "val":Ljava/lang/String;
    :cond_3
    move/from16 v18, v5

    move-object/from16 v19, v6

    .line 161
    .end local v3    # "ix":I
    .end local v5    # "ch":C
    .end local v6    # "val":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 163
    .end local v14    # "rec":I
    .local v2, "rec":I
    if-ltz v2, :cond_5

    .line 164
    invoke-static {v7, v11, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 165
    move v10, v11

    move v14, v10

    move v10, v2

    goto :goto_1

    .line 163
    :cond_5
    move v14, v10

    move v10, v2

    goto :goto_1

    .line 168
    .end local v2    # "rec":I
    .restart local v14    # "rec":I
    :cond_6
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    move v14, v10

    move v10, v2

    .line 171
    .local v10, "rec":I
    .local v14, "selStart":I
    :goto_1
    if-ltz v10, :cond_d

    .line 176
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->sRecs:Landroid/util/SparseArray;

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 178
    .restart local v6    # "val":Ljava/lang/String;
    const/4 v2, 0x0

    .line 179
    .local v2, "off":I
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/text/method/MultiTapKeyListener;->mCapitalize:Landroid/text/method/TextKeyListener$Capitalize;

    .line 180
    invoke-static {v3, v7, v14}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 183
    move v2, v3

    .line 184
    move/from16 v16, v2

    goto :goto_3

    .line 181
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 189
    .end local v3    # "i":I
    :cond_8
    move/from16 v16, v2

    .end local v2    # "off":I
    .local v16, "off":I
    :goto_3
    if-eq v14, v11, :cond_9

    .line 190
    invoke-static {v7, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 193
    :cond_9
    sget-object v2, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v2, v14, v14, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 196
    add-int/lit8 v17, v16, 0x1

    move-object/from16 v1, p2

    move v2, v14

    move v3, v11

    move-object v4, v6

    move/from16 v5, v16

    move-object/from16 v18, v6

    .end local v6    # "val":Ljava/lang/String;
    .local v18, "val":Ljava/lang/String;
    move/from16 v6, v17

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 198
    sget-object v1, Landroid/text/method/MultiTapKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v7, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 199
    .local v1, "oldStart":I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 201
    .end local v11    # "selEnd":I
    .local v2, "selEnd":I
    if-eq v2, v1, :cond_a

    .line 202
    invoke-static {v7, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 204
    sget-object v3, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v4, 0x21

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 208
    sget-object v3, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    shl-int/lit8 v5, v10, 0x18

    or-int/2addr v4, v5

    invoke-interface {v7, v3, v1, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :cond_a
    invoke-static/range {p2 .. p2}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 216
    new-instance v3, Landroid/text/method/MultiTapKeyListener$Timeout;

    invoke-direct {v3, v0, v7}, Landroid/text/method/MultiTapKeyListener$Timeout;-><init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V

    .line 221
    invoke-interface {v7, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_c

    .line 222
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Landroid/text/method/KeyListener;

    const/4 v5, 0x0

    invoke-interface {v7, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/KeyListener;

    .line 224
    .local v3, "methods":[Landroid/text/method/KeyListener;
    array-length v4, v3

    move v6, v5

    :goto_4
    if-ge v6, v4, :cond_b

    aget-object v11, v3, v6

    .line 225
    .local v11, "method":Ljava/lang/Object;
    invoke-interface {v7, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 224
    .end local v11    # "method":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 227
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v6, 0x12

    invoke-interface {v7, v0, v5, v4, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 231
    .end local v3    # "methods":[Landroid/text/method/KeyListener;
    :cond_c
    return v15

    .line 234
    .end local v1    # "oldStart":I
    .end local v2    # "selEnd":I
    .end local v16    # "off":I
    .end local v18    # "val":Ljava/lang/String;
    .local v11, "selEnd":I
    :cond_d
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 290
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 1
    .param p1, "buf"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "s"    # I
    .param p4, "e"    # I
    .param p5, "start"    # I
    .param p6, "stop"    # I

    .line 239
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    .line 240
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 241
    invoke-static {p1}, Landroid/text/method/MultiTapKeyListener;->removeTimeouts(Landroid/text/Spannable;)V

    .line 243
    :cond_0
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "s"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 291
    return-void
.end method
