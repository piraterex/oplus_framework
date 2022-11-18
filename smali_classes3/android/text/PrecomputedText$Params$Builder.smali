.class public Landroid/text/PrecomputedText$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/PrecomputedText$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mHyphenationFrequency:I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private final greylist-max-o mPaint:Landroid/text/TextPaint;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor whitelist <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 1
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    .line 118
    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    .line 122
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 137
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 138
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 139
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    .line 140
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    .line 141
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 142
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    .line 118
    iput v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    .line 122
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/PrecomputedText$Params$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 130
    iput-object p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 131
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/PrecomputedText$Params;
    .locals 7

    .line 206
    new-instance v6, Landroid/text/PrecomputedText$Params;

    iget-object v1, p0, Landroid/text/PrecomputedText$Params$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/PrecomputedText$Params$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    iget-object v3, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v4, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    iget v5, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    return-object v6
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0
    .param p1, "strategy"    # I

    .line 155
    iput p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mBreakStrategy:I

    .line 156
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0
    .param p1, "frequency"    # I

    .line 170
    iput p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mHyphenationFrequency:I

    .line 171
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 196
    iput-object p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 197
    return-object p0
.end method

.method public whitelist setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 184
    iput-object p1, p0, Landroid/text/PrecomputedText$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 185
    return-object p0
.end method
