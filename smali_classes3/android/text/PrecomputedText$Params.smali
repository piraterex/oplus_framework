.class public final Landroid/text/PrecomputedText$Params;
.super Ljava/lang/Object;
.source "PrecomputedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/PrecomputedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/PrecomputedText$Params$CheckResultUsableResult;,
        Landroid/text/PrecomputedText$Params$Builder;
    }
.end annotation


# static fields
.field public static final blacklist NEED_RECOMPUTE:I = 0x1

.field public static final blacklist UNUSABLE:I = 0x0

.field public static final blacklist USABLE:I = 0x2


# instance fields
.field private final greylist-max-o mBreakStrategy:I

.field private final greylist-max-o mHyphenationFrequency:I

.field private final blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private final greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I
    .locals 0

    iget p0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I
    .locals 0

    iget p0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    iget-object p0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V
    .locals 0
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "strategy"    # I
    .param p5, "frequency"    # I

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 220
    iput-object p3, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 221
    iput p4, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    .line 222
    iput p5, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    .line 223
    iput-object p2, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 224
    return-void
.end method


# virtual methods
.method public blacklist checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "strategy"    # I
    .param p4, "frequency"    # I
    .param p5, "lbConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 302
    iget v0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 303
    invoke-virtual {v0, p5}, Landroid/graphics/text/LineBreakConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 304
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 307
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 318
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 319
    return v0

    .line 321
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/text/PrecomputedText$Params;

    if-nez v2, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/text/PrecomputedText$Params;

    .line 325
    .local v2, "param":Landroid/text/PrecomputedText$Params;
    iget-object v4, v2, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    iget-object v5, v2, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v6, v2, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    iget v7, v2, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    iget-object v8, v2, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 322
    .end local v2    # "param":Landroid/text/PrecomputedText$Params;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getBreakStrategy()I
    .locals 1

    .line 250
    iget v0, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getHyphenationFrequency()I
    .locals 1

    .line 259
    iget v0, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getTextDirection()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public whitelist getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 332
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 334
    .local v0, "lineBreakStyle":I
    :goto_0
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x3

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 335
    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x4

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x5

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 336
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x8

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 337
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0x9

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    aput-object v3, v2, v1

    const/16 v1, 0xb

    iget v3, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xc

    iget v3, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 334
    invoke-static {v2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 343
    iget-object v0, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig;->getLineBreakStyle()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 345
    .local v0, "lineBreakStyle":I
    :goto_0
    iget-object v2, p0, Landroid/text/PrecomputedText$Params;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {v2}, Landroid/graphics/text/LineBreakConfig;->getLineBreakWordStyle()I

    move-result v1

    goto :goto_1

    .line 347
    :cond_1
    nop

    :goto_1
    nop

    .line 348
    .local v1, "lineBreakWordStyle":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{textSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 349
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", textScaleX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 350
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", textSkewX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 351
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", letterSpacing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 352
    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", textLocale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 353
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", typeface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 354
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", variationSettings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 355
    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", elegantTextHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mPaint:Landroid/text/TextPaint;

    .line 356
    invoke-virtual {v3}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", textDir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/text/PrecomputedText$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", breakStrategy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/PrecomputedText$Params;->mBreakStrategy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hyphenationFrequency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/PrecomputedText$Params;->mHyphenationFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lineBreakStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lineBreakWordStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 348
    return-object v2
.end method
