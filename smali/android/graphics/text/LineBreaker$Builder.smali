.class public final Landroid/graphics/text/LineBreaker$Builder;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBreakStrategy:I

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIndents:[I

.field private blacklist mJustificationMode:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 182
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 183
    iput v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreaker;
    .locals 7

    .line 239
    new-instance v6, Landroid/graphics/text/LineBreaker;

    iget v1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    iget v2, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    iget v3, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    iget-object v4, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/text/LineBreaker;-><init>(III[ILandroid/graphics/text/LineBreaker-IA;)V

    return-object v6
.end method

.method public whitelist setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "breakStrategy"    # I

    .line 193
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mBreakStrategy:I

    .line 194
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "hyphenationFrequency"    # I

    .line 205
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mHyphenationFrequency:I

    .line 206
    return-object p0
.end method

.method public whitelist setIndents([I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "indents"    # [I

    .line 229
    iput-object p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mIndents:[I

    .line 230
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;
    .locals 0
    .param p1, "justificationMode"    # I

    .line 217
    iput p1, p0, Landroid/graphics/text/LineBreaker$Builder;->mJustificationMode:I

    .line 218
    return-object p0
.end method
