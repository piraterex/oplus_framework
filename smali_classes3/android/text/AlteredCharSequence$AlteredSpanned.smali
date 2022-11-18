.class Landroid/text/AlteredCharSequence$AlteredSpanned;
.super Landroid/text/AlteredCharSequence;
.source "AlteredCharSequence.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AlteredCharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlteredSpanned"
.end annotation


# instance fields
.field private greylist-max-o mSpanned:Landroid/text/Spanned;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;[CII)V
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "sub"    # [C
    .param p3, "substart"    # I
    .param p4, "subend"    # I

    .line 64
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence-IA;)V

    .line 65
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$AlteredSpanned-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method


# virtual methods
.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
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

    .line 69
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 85
    iget-object v0, p0, Landroid/text/AlteredCharSequence$AlteredSpanned;->mSpanned:Landroid/text/Spanned;

    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method
