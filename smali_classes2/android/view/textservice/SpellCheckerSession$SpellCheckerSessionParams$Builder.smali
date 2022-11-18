.class public final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
.super Ljava/lang/Object;
.source "SpellCheckerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mLocale:Ljava/util/Locale;

.field private blacklist mShouldReferToSpellCheckerLanguageSettings:Z

.field private blacklist mSupportedAttributes:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    .line 596
    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    .line 597
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 601
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    .locals 7

    .line 613
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLocale should not be null if  mShouldReferToSpellCheckerLanguageSettings is false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_1
    :goto_0
    new-instance v6, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    iget-boolean v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    iget v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;-><init>(Ljava/util/Locale;ZILandroid/os/Bundle;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams-IA;)V

    return-object v6
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 681
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    .line 682
    return-object p0
.end method

.method public whitelist setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .line 628
    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    .line 629
    return-object p0
.end method

.method public whitelist setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0
    .param p1, "shouldReferToSpellCheckerLanguageSettings"    # Z

    .line 653
    iput-boolean p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    .line 655
    return-object p0
.end method

.method public whitelist setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .locals 0
    .param p1, "supportedAttributes"    # I

    .line 667
    iput p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    .line 668
    return-object p0
.end method
