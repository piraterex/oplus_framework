.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final greylist-max-o COMPOSING:Ljava/lang/Object;

.field private static greylist-max-o DEBUG:Z = false

.field private static greylist-max-o INVALID_INDEX:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private greylist-max-o mDefaultComposingSpans:[Ljava/lang/Object;

.field greylist-max-o mEditable:Landroid/text/Editable;

.field final blacklist mFallbackMode:Z

.field protected final greylist-max-o mIMM:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final greylist-max-o mTargetView:Landroid/view/View;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    .line 66
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 312
    const/4 v0, -0x1

    sput v0, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/View;Z)V
    .locals 2
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "fullEditor"    # Z

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 87
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 88
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 89
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .param p1, "mgr"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "fullEditor"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 81
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    .line 82
    return-void
.end method

.method private greylist-max-o ensureDefaultComposingSpans()V
    .locals 7

    .line 842
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 844
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    goto :goto_1

    .line 846
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->getServedView()Landroid/view/View;

    move-result-object v0

    .line 848
    .local v0, "servedView":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .line 849
    .local v0, "context":Landroid/content/Context;
    goto :goto_1

    .line 850
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .line 852
    .restart local v0    # "context":Landroid/content/Context;
    :goto_1
    if-eqz v0, :cond_3

    .line 853
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010230

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 854
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 857
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 858
    .local v2, "style":Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 859
    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_3

    .line 860
    move-object v3, v2

    check-cast v3, Landroid/text/Spanned;

    .line 861
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    .line 860
    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 865
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    .end local v2    # "style":Ljava/lang/CharSequence;
    :cond_3
    return-void
.end method

.method private static greylist-max-o findIndexBackward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 315
    move v0, p1

    .line 316
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 317
    .local v1, "waitingHighSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 318
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    if-gez p2, :cond_1

    .line 322
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 324
    :cond_1
    move v3, p2

    .line 326
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_2

    .line 327
    return v0

    .line 330
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 331
    if-gez v0, :cond_4

    .line 332
    if-eqz v1, :cond_3

    .line 333
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 335
    :cond_3
    const/4 v4, 0x0

    return v4

    .line 337
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 338
    .local v4, "c":C
    if-eqz v1, :cond_6

    .line 339
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 340
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 342
    :cond_5
    const/4 v1, 0x0

    .line 343
    add-int/lit8 v3, v3, -0x1

    .line 344
    goto :goto_0

    .line 346
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 347
    add-int/lit8 v3, v3, -0x1

    .line 348
    goto :goto_0

    .line 350
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 351
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 353
    :cond_8
    const/4 v1, 0x1

    .line 354
    .end local v4    # "c":C
    goto :goto_0

    .line 319
    .end local v3    # "remainingCodePoints":I
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method private static greylist-max-o findIndexForward(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "numCodePoints"    # I

    .line 359
    move v0, p1

    .line 360
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .line 361
    .local v1, "waitingLowSurrogate":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 362
    .local v2, "N":I
    if-ltz v0, :cond_9

    if-ge v2, v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    if-gez p2, :cond_1

    .line 366
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3

    .line 368
    :cond_1
    move v3, p2

    .line 371
    .local v3, "remainingCodePoints":I
    :goto_0
    if-nez v3, :cond_2

    .line 372
    return v0

    .line 375
    :cond_2
    if-lt v0, v2, :cond_4

    .line 376
    if-eqz v1, :cond_3

    .line 377
    sget v4, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v4

    .line 379
    :cond_3
    return v2

    .line 381
    :cond_4
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 382
    .local v4, "c":C
    if-eqz v1, :cond_6

    .line 383
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 384
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 386
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 387
    const/4 v1, 0x0

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    goto :goto_0

    .line 391
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 392
    add-int/lit8 v3, v3, -0x1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 394
    goto :goto_0

    .line 396
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 397
    sget v5, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v5

    .line 399
    :cond_8
    const/4 v1, 0x1

    .line 400
    nop

    .end local v4    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 401
    goto :goto_0

    .line 363
    .end local v3    # "remainingCodePoints":I
    :cond_9
    :goto_1
    sget v3, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    return v3
.end method

.method public static whitelist getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 139
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;

    .line 135
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final whitelist removeComposingSpans(Landroid/text/Spannable;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Spannable;

    .line 92
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 93
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "sps":[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 95
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 96
    aget-object v2, v0, v1

    .line 97
    .local v2, "o":Ljava/lang/Object;
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 98
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 95
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "composing"    # Z

    .line 869
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 870
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    .line 871
    return-void

    .line 875
    :cond_0
    if-nez p1, :cond_1

    .line 876
    return-void

    .line 880
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 883
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 884
    .local v1, "a":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v2

    .line 886
    .local v2, "b":I
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    const-string v4, " to "

    const-string v5, "BaseInputConnection"

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Composing span: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_2
    if-ge v2, v1, :cond_3

    .line 889
    move v3, v1

    .line 890
    .local v3, "tmp":I
    move v1, v2

    .line 891
    move v2, v3

    .line 894
    .end local v3    # "tmp":I
    :cond_3
    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    if-eq v2, v3, :cond_4

    .line 895
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    goto :goto_0

    .line 897
    :cond_4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 898
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 899
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 900
    :cond_5
    if-gez v2, :cond_6

    const/4 v2, 0x0

    .line 901
    :cond_6
    if-ge v2, v1, :cond_7

    .line 902
    move v3, v1

    .line 903
    .restart local v3    # "tmp":I
    move v1, v2

    .line 904
    move v2, v3

    .line 908
    .end local v3    # "tmp":I
    :cond_7
    :goto_0
    if-eqz p3, :cond_b

    .line 909
    const/4 v3, 0x0

    .line 910
    .local v3, "sp":Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_9

    .line 911
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v6

    .line 912
    move-object p1, v3

    .line 913
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 914
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_a

    .line 915
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v7, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_8

    .line 916
    aget-object v7, v7, v6

    const/4 v8, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v9

    const/16 v10, 0x121

    invoke-interface {v3, v7, v8, v9, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 915
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_8
    goto :goto_2

    .line 921
    :cond_9
    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    .line 923
    :cond_a
    :goto_2
    invoke-static {v3}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 926
    .end local v3    # "sp":Landroid/text/Spannable;
    :cond_b
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Replacing from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", composing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 926
    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_c
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    const/4 v4, 0x2

    const-string v6, "  "

    if-eqz v3, :cond_d

    .line 931
    new-instance v3, Landroid/util/LogPrinter;

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 932
    .local v3, "lp":Landroid/util/LogPrinter;
    const-string v7, "Current text:"

    invoke-virtual {v3, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 933
    invoke-static {v0, v3, v6}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 934
    const-string v7, "Composing text:"

    invoke-virtual {v3, v7}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 935
    invoke-static {p1, v3, v6}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 942
    .end local v3    # "lp":Landroid/util/LogPrinter;
    :cond_d
    if-lez p2, :cond_e

    .line 943
    add-int/lit8 v3, v2, -0x1

    add-int/2addr p2, v3

    goto :goto_3

    .line 945
    :cond_e
    add-int/2addr p2, v1

    .line 947
    :goto_3
    if-gez p2, :cond_f

    const/4 p2, 0x0

    .line 948
    :cond_f
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-le p2, v3, :cond_10

    .line 949
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result p2

    .line 950
    :cond_10
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 952
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 954
    sget-boolean v3, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 955
    new-instance v3, Landroid/util/LogPrinter;

    invoke-direct {v3, v4, v5}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    .line 956
    .restart local v3    # "lp":Landroid/util/LogPrinter;
    const-string v4, "Final text:"

    invoke-virtual {v3, v4}, Landroid/util/LogPrinter;->println(Ljava/lang/String;)V

    .line 957
    invoke-static {v0, v3, v6}, Landroid/text/TextUtils;->dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V

    .line 960
    .end local v3    # "lp":Landroid/util/LogPrinter;
    :cond_11
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 961
    return-void
.end method

.method private greylist-max-o sendCurrentText()V
    .locals 11

    .line 803
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    if-nez v0, :cond_0

    .line 804
    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 808
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_6

    .line 809
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 810
    .local v1, "N":I
    if-nez v1, :cond_1

    .line 811
    return-void

    .line 813
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 816
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_2

    .line 817
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 819
    :cond_2
    new-array v3, v2, [C

    .line 820
    .local v3, "chars":[C
    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3, v4}, Landroid/text/Editable;->getChars(II[CI)V

    .line 821
    iget-object v2, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 822
    .local v2, "events":[Landroid/view/KeyEvent;
    if-eqz v2, :cond_5

    .line 823
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 824
    sget-boolean v5, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseInputConnection"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_3
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 823
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 827
    .end local v4    # "i":I
    :cond_4
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 828
    return-void

    .line 834
    .end local v2    # "events":[Landroid/view/KeyEvent;
    .end local v3    # "chars":[C
    :cond_5
    new-instance v2, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 835
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 836
    .local v2, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 837
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 839
    .end local v1    # "N":I
    .end local v2    # "event":Landroid/view/KeyEvent;
    :cond_6
    return-void
.end method

.method public static whitelist setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Spannable;

    .line 105
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 106
    return-void
.end method

.method public static greylist-max-o setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 110
    const-class v0, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "sps":[Ljava/lang/Object;
    const/16 v1, 0x121

    if-eqz v0, :cond_2

    .line 112
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 113
    aget-object v3, v0, v2

    .line 114
    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    .line 115
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 116
    goto :goto_1

    .line 119
    :cond_0
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 120
    .local v4, "fl":I
    and-int/lit16 v5, v4, 0x133

    if-eq v5, v1, :cond_1

    .line 122
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v7, v4, -0x34

    or-int/lit16 v7, v7, 0x100

    or-int/lit8 v7, v7, 0x21

    invoke-interface {p0, v3, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 112
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "fl":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 130
    .end local v2    # "i":I
    :cond_2
    sget-object v2, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v2, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist beginBatchEdit()Z
    .locals 1

    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist clearMetaKeyStates(I)Z
    .locals 2
    .param p1, "states"    # I

    .line 197
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 198
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 199
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 200
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist closeConnection()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->setImeConsumesInput(Z)Z

    .line 189
    return-void
.end method

.method public whitelist commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .param p1, "text"    # Landroid/view/inputmethod/CompletionInfo;

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "inputContentInfo"    # Landroid/view/inputmethod/InputContentInfo;
    .param p2, "flags"    # I
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 969
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 970
    .local v0, "description":Landroid/content/ClipDescription;
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getReceiveContentMimeTypes()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseInputConnection"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 971
    sget-boolean v1, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t insert content from IME: content="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_0
    return v3

    .line 976
    :cond_1
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 978
    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    goto :goto_0

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 981
    return v3

    .line 984
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    new-instance v4, Landroid/content/ClipData$Item;

    .line 985
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v2, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 986
    .local v1, "clip":Landroid/content/ClipData;
    new-instance v2, Landroid/view/ContentInfo$Builder;

    const/4 v4, 0x2

    invoke-direct {v2, v1, v4}, Landroid/view/ContentInfo$Builder;-><init>(Landroid/content/ClipData;I)V

    .line 987
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ContentInfo$Builder;->setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    .line 988
    invoke-virtual {v2, p3}, Landroid/view/ContentInfo$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    .line 989
    invoke-virtual {v2, p1}, Landroid/view/ContentInfo$Builder;->setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;

    move-result-object v2

    .line 990
    invoke-virtual {v2}, Landroid/view/ContentInfo$Builder;->build()Landroid/view/ContentInfo;

    move-result-object v2

    .line 991
    .local v2, "payload":Landroid/view/ContentInfo;
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->performReceiveContent(Landroid/view/ContentInfo;)Landroid/view/ContentInfo;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method public whitelist commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .param p1, "correctionInfo"    # Landroid/view/inputmethod/CorrectionInfo;

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 223
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 225
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist deleteSurroundingText(II)Z
    .locals 8
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 247
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 250
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 254
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 255
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 257
    .local v3, "b":I
    if-le v2, v3, :cond_2

    .line 258
    move v4, v2

    .line 259
    .local v4, "tmp":I
    move v2, v3

    .line 260
    move v3, v4

    .line 264
    .end local v4    # "tmp":I
    :cond_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_b

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 271
    .local v1, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 272
    .local v5, "cb":I
    if-ge v5, v1, :cond_4

    .line 273
    move v6, v1

    .line 274
    .local v6, "tmp":I
    move v1, v5

    .line 275
    move v5, v6

    .line 277
    .end local v6    # "tmp":I
    :cond_4
    if-eq v1, v4, :cond_6

    if-eq v5, v4, :cond_6

    .line 278
    if-ge v1, v2, :cond_5

    move v2, v1

    .line 279
    :cond_5
    if-le v5, v3, :cond_6

    move v3, v5

    .line 282
    :cond_6
    const/4 v4, 0x0

    .line 284
    .local v4, "deleted":I
    if-lez p1, :cond_8

    .line 285
    sub-int v6, v2, p1

    .line 286
    .local v6, "start":I
    if-gez v6, :cond_7

    const/4 v6, 0x0

    .line 288
    :cond_7
    sub-int v7, v2, v6

    .line 289
    .local v7, "numDeleteBefore":I
    if-ltz v2, :cond_8

    if-lez v7, :cond_8

    .line 290
    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 291
    move v4, v7

    .line 295
    .end local v6    # "start":I
    .end local v7    # "numDeleteBefore":I
    :cond_8
    if-lez p2, :cond_a

    .line 296
    sub-int/2addr v3, v4

    .line 298
    add-int v6, v3, p2

    .line 299
    .local v6, "end":I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    if-le v6, v7, :cond_9

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    .line 301
    :cond_9
    sub-int v7, v6, v3

    .line 302
    .local v7, "numDeleteAfter":I
    if-ltz v3, :cond_a

    if-lez v7, :cond_a

    .line 303
    invoke-interface {v0, v3, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 307
    .end local v6    # "end":I
    .end local v7    # "numDeleteAfter":I
    :cond_a
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 309
    const/4 v6, 0x1

    return v6

    .line 265
    .end local v1    # "ca":I
    .end local v4    # "deleted":I
    .end local v5    # "cb":I
    :cond_b
    :goto_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 266
    return v1
.end method

.method public whitelist deleteSurroundingTextInCodePoints(II)Z
    .locals 11
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .line 417
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSurroundingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 420
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 424
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 425
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 427
    .local v3, "b":I
    if-le v2, v3, :cond_2

    .line 428
    move v4, v2

    .line 429
    .local v4, "tmp":I
    move v2, v3

    .line 430
    move v3, v4

    .line 434
    .end local v4    # "tmp":I
    :cond_2
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 435
    .local v4, "ca":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 436
    .local v5, "cb":I
    if-ge v5, v4, :cond_3

    .line 437
    move v6, v4

    .line 438
    .local v6, "tmp":I
    move v4, v5

    .line 439
    move v5, v6

    .line 441
    .end local v6    # "tmp":I
    :cond_3
    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    if-eq v5, v6, :cond_5

    .line 442
    if-ge v4, v2, :cond_4

    move v2, v4

    .line 443
    :cond_4
    if-le v5, v3, :cond_5

    move v3, v5

    .line 446
    :cond_5
    if-ltz v2, :cond_7

    if-ltz v3, :cond_7

    .line 447
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v0, v2, v6}, Landroid/view/inputmethod/BaseInputConnection;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 448
    .local v6, "start":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v6, v7, :cond_7

    .line 449
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/view/inputmethod/BaseInputConnection;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 450
    .local v1, "end":I
    sget v7, Landroid/view/inputmethod/BaseInputConnection;->INVALID_INDEX:I

    if-eq v1, v7, :cond_7

    .line 451
    sub-int v7, v2, v6

    .line 452
    .local v7, "numDeleteBefore":I
    if-lez v7, :cond_6

    .line 453
    invoke-interface {v0, v6, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 455
    :cond_6
    sub-int v8, v1, v3

    .line 456
    .local v8, "numDeleteAfter":I
    if-lez v8, :cond_7

    .line 457
    sub-int v9, v3, v7

    sub-int v10, v1, v7

    invoke-interface {v0, v9, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 468
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "numDeleteBefore":I
    .end local v8    # "numDeleteAfter":I
    :cond_7
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 470
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist endBatchEdit()Z
    .locals 1

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist endComposingRegionEditInternal()V
    .locals 0

    .line 179
    return-void
.end method

.method public whitelist finishComposingText()Z
    .locals 2

    .line 479
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseInputConnection"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 481
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 483
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 485
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 486
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 487
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 489
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist getCursorCapsMode(I)I
    .locals 4
    .param p1, "reqModes"    # I

    .line 498
    iget-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mFallbackMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 500
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 501
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_1

    return v1

    .line 503
    :cond_1
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 504
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 506
    .local v2, "b":I
    if-le v1, v2, :cond_2

    .line 507
    move v3, v1

    .line 508
    .local v3, "tmp":I
    move v1, v2

    .line 509
    move v2, v3

    .line 512
    .end local v3    # "tmp":I
    :cond_2
    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public whitelist getEditable()Landroid/text/Editable;
    .locals 2

    .line 149
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 151
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public whitelist getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .line 519
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getHandler()Landroid/os/Handler;
    .locals 1

    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "flags"    # I

    .line 561
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 562
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 564
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 565
    .local v2, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 567
    .local v3, "b":I
    if-le v2, v3, :cond_1

    .line 568
    move v4, v2

    .line 569
    .local v4, "tmp":I
    move v2, v3

    .line 570
    move v3, v4

    .line 573
    .end local v4    # "tmp":I
    :cond_1
    if-eq v2, v3, :cond_4

    if-gez v2, :cond_2

    goto :goto_0

    .line 575
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_3

    .line 576
    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 578
    :cond_3
    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 573
    :cond_4
    :goto_0
    return-object v1
.end method

.method public whitelist getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;
    .locals 10
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "flags"    # I

    .line 624
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 625
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 627
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 631
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_5

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-ne v1, v0, :cond_0

    goto :goto_2

    .line 635
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 636
    .local v1, "selStart":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 639
    .local v2, "selEnd":I
    if-ltz v1, :cond_4

    if-gez v2, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    if-le v1, v2, :cond_2

    .line 644
    move v3, v1

    .line 645
    .local v3, "tmp":I
    move v1, v2

    .line 646
    move v2, v3

    .line 649
    .end local v3    # "tmp":I
    :cond_2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 650
    .local v3, "contentLength":I
    sub-int v4, v1, p1

    .line 651
    .local v4, "startPos":I
    add-int v5, v2, p2

    .line 654
    .local v5, "endPos":I
    const/4 v6, 0x0

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 655
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 658
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_3

    .line 659
    invoke-interface {v0, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, "surroundingText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 661
    .end local v6    # "surroundingText":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v0, v4, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    .line 663
    .restart local v6    # "surroundingText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v7, Landroid/view/inputmethod/SurroundingText;

    sub-int v8, v1, v4

    sub-int v9, v2, v4

    invoke-direct {v7, v6, v8, v9, v4}, Landroid/view/inputmethod/SurroundingText;-><init>(Ljava/lang/CharSequence;III)V

    return-object v7

    .line 640
    .end local v3    # "contentLength":I
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    .end local v6    # "surroundingText":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 632
    .end local v1    # "selStart":I
    .end local v2    # "selEnd":I
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 587
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 589
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 590
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 592
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 593
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 595
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 596
    move v3, v1

    .line 597
    .local v3, "tmp":I
    move v1, v2

    .line 598
    move v2, v3

    .line 602
    .end local v3    # "tmp":I
    :cond_1
    if-gez v2, :cond_2

    .line 603
    const/4 v2, 0x0

    .line 606
    :cond_2
    add-int v3, v2, p1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 607
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int p1, v3, v2

    .line 611
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 612
    add-int v3, v2, p1

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 614
    :cond_4
    add-int v3, v2, p1

    invoke-static {v0, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "length"    # I
    .param p2, "flags"    # I

    .line 528
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 530
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 531
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 533
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 534
    .local v1, "a":I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 536
    .local v2, "b":I
    if-le v1, v2, :cond_1

    .line 537
    move v3, v1

    .line 538
    .local v3, "tmp":I
    move v1, v2

    .line 539
    move v2, v3

    .line 542
    .end local v3    # "tmp":I
    :cond_1
    if-gtz v1, :cond_2

    .line 543
    const-string v3, ""

    return-object v3

    .line 546
    :cond_2
    if-le p1, v1, :cond_3

    .line 547
    move p1, v1

    .line 550
    :cond_3
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_4

    .line 551
    sub-int v3, v1, p1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 553
    :cond_4
    sub-int v3, v1, p1

    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist performContextMenuAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist performEditorAction(I)Z
    .locals 16
    .param p1, "actionCode"    # I

    .line 671
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 672
    .local v13, "eventTime":J
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-object v1, v15

    move-wide v2, v13

    move-wide v4, v13

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 677
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v6, 0x1

    move-object v1, v15

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v0, v15}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 682
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 696
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist reportFullscreenMode(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 799
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist requestCursorUpdates(I)Z
    .locals 1
    .param p1, "cursorUpdateMode"    # I

    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 791
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setComposingRegion(II)Z
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 722
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 723
    .local v0, "content":Landroid/text/Editable;
    if-eqz v0, :cond_6

    .line 724
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 725
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 726
    move v1, p1

    .line 727
    .local v1, "a":I
    move v2, p2

    .line 728
    .local v2, "b":I
    if-le v1, v2, :cond_0

    .line 729
    move v3, v1

    .line 730
    .local v3, "tmp":I
    move v1, v2

    .line 731
    move v2, v3

    .line 734
    .end local v3    # "tmp":I
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 735
    .local v3, "length":I
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 736
    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 737
    :cond_2
    if-le v1, v3, :cond_3

    move v1, v3

    .line 738
    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    .line 740
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 741
    iget-object v4, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    const/16 v5, 0x121

    if-eqz v4, :cond_5

    .line 742
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v7, v6

    if-ge v4, v7, :cond_5

    .line 743
    aget-object v6, v6, v4

    invoke-interface {v0, v6, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 742
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 748
    .end local v4    # "i":I
    :cond_5
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v0, v4, v1, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 752
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 753
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 754
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endComposingRegionEditInternal()V

    .line 756
    .end local v1    # "a":I
    .end local v2    # "b":I
    .end local v3    # "length":I
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .line 716
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setComposingText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 718
    return v0
.end method

.method public whitelist setSelection(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 764
    sget-boolean v0, Landroid/view/inputmethod/BaseInputConnection;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseInputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 766
    .local v0, "content":Landroid/text/Editable;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    .line 767
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 768
    .local v1, "len":I
    const/4 v2, 0x1

    if-gt p1, v1, :cond_4

    if-gt p2, v1, :cond_4

    if-ltz p1, :cond_4

    if-gez p2, :cond_2

    goto :goto_1

    .line 775
    :cond_2
    if-ne p1, p2, :cond_3

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 779
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 781
    :cond_3
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 783
    :goto_0
    return v2

    .line 773
    :cond_4
    :goto_1
    return v2
.end method

.method public whitelist takeSnapshot()Landroid/view/inputmethod/TextSnapshot;
    .locals 6

    .line 1003
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 1004
    .local v0, "content":Landroid/text/Editable;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1005
    return-object v1

    .line 1007
    :cond_0
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 1008
    .local v2, "composingStart":I
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 1009
    .local v3, "composingEnd":I
    if-ge v3, v2, :cond_1

    .line 1010
    move v4, v2

    .line 1011
    .local v4, "tmp":I
    move v2, v3

    .line 1012
    move v3, v4

    .line 1015
    .end local v4    # "tmp":I
    :cond_1
    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual {p0, v5, v5, v4}, Landroid/view/inputmethod/BaseInputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object v4

    .line 1018
    .local v4, "surroundingText":Landroid/view/inputmethod/SurroundingText;
    if-nez v4, :cond_2

    .line 1019
    return-object v1

    .line 1022
    :cond_2
    const/16 v1, 0x7000

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->getCursorCapsMode(I)I

    move-result v1

    .line 1025
    .local v1, "cursorCapsMode":I
    new-instance v5, Landroid/view/inputmethod/TextSnapshot;

    invoke-direct {v5, v4, v2, v3, v1}, Landroid/view/inputmethod/TextSnapshot;-><init>(Landroid/view/inputmethod/SurroundingText;III)V

    return-object v5
.end method
