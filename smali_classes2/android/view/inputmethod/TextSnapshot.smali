.class public final Landroid/view/inputmethod/TextSnapshot;
.super Ljava/lang/Object;
.source "TextSnapshot.java"


# instance fields
.field private final blacklist mCompositionEnd:I

.field private final blacklist mCompositionStart:I

.field private final blacklist mCursorCapsMode:I

.field private final blacklist mSurroundingText:Landroid/view/inputmethod/SurroundingText;


# direct methods
.method public constructor whitelist <init>(Landroid/view/inputmethod/SurroundingText;III)V
    .locals 3
    .param p1, "surroundingText"    # Landroid/view/inputmethod/SurroundingText;
    .param p2, "compositionStart"    # I
    .param p3, "compositionEnd"    # I
    .param p4, "cursorCapsMode"    # I

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    .line 55
    const/4 v0, -0x1

    if-lt p2, v0, :cond_6

    .line 59
    if-lt p3, v0, :cond_5

    .line 63
    if-ne p2, v0, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compositionEnd must be -1 if compositionStart is -1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    :goto_0
    if-eq p2, v0, :cond_3

    if-eq p3, v0, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compositionStart must be -1 if compositionEnd is -1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    :goto_1
    if-gt p2, p3, :cond_4

    .line 75
    iput p2, p0, Landroid/view/inputmethod/TextSnapshot;->mCompositionStart:I

    .line 76
    iput p3, p0, Landroid/view/inputmethod/TextSnapshot;->mCompositionEnd:I

    .line 77
    iput p4, p0, Landroid/view/inputmethod/TextSnapshot;->mCursorCapsMode:I

    .line 78
    return-void

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compositionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be equal to or greater than compositionEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compositionEnd must be -1 or higher but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compositionStart must be -1 or higher but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getCompositionEnd()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/view/inputmethod/TextSnapshot;->mCompositionEnd:I

    return v0
.end method

.method public whitelist getCompositionStart()I
    .locals 1

    .line 115
    iget v0, p0, Landroid/view/inputmethod/TextSnapshot;->mCompositionStart:I

    return v0
.end method

.method public whitelist getCursorCapsMode()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/view/inputmethod/TextSnapshot;->mCursorCapsMode:I

    return v0
.end method

.method public whitelist getSelectionEnd()I
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v0

    if-gez v0, :cond_0

    .line 105
    const/4 v0, -0x1

    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSelectionStart()I
    .locals 2

    .line 93
    iget-object v0, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v0

    if-gez v0, :cond_0

    .line 94
    const/4 v0, -0x1

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v0}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    invoke-virtual {v1}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSurroundingText()Landroid/view/inputmethod/SurroundingText;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/view/inputmethod/TextSnapshot;->mSurroundingText:Landroid/view/inputmethod/SurroundingText;

    return-object v0
.end method
