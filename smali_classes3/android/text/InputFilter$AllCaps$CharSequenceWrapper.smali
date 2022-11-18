.class Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
.super Ljava/lang/Object;
.source "InputFilter.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter$AllCaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharSequenceWrapper"
.end annotation


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mLength:I

.field private final greylist-max-o mSource:Ljava/lang/CharSequence;

.field private final greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    .line 113
    iput p2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    .line 114
    iput p3, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    .line 115
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    .line 116
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .locals 2
    .param p1, "index"    # I

    .line 123
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    if-ge p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 141
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api length()I
    .locals 1

    .line 119
    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 157
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 130
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    if-gt p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    .line 133
    new-instance v0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    iget-object v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int v3, v2, p1

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 137
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
