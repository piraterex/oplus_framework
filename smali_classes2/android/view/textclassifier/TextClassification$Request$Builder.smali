.class public final Landroid/view/textclassifier/TextClassification$Request$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private blacklist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mStartIndex:I

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    .line 643
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    .line 644
    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    .line 645
    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    .line 646
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textclassifier/TextClassification$Request;
    .locals 9

    .line 690
    new-instance v8, Landroid/view/textclassifier/TextClassification$Request;

    new-instance v1, Landroid/text/SpannedString;

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 692
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification$Request-IA;)V

    .line 690
    return-object v8
.end method

.method public whitelist setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .locals 0
    .param p1, "defaultLocales"    # Landroid/os/LocaleList;

    .line 657
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    .line 658
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 681
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mExtras:Landroid/os/Bundle;

    .line 682
    return-object p0
.end method

.method public whitelist setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .locals 0
    .param p1, "referenceTime"    # Ljava/time/ZonedDateTime;

    .line 670
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 671
    return-object p0
.end method
