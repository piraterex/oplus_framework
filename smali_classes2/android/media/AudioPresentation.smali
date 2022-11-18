.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$Builder;,
        Landroid/media/AudioPresentation$MasteringIndicationType;,
        Landroid/media/AudioPresentation$ContentClassifier;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_COMMENTARY:I = 0x5

.field public static final whitelist CONTENT_DIALOG:I = 0x4

.field public static final whitelist CONTENT_EMERGENCY:I = 0x6

.field public static final whitelist CONTENT_HEARING_IMPAIRED:I = 0x3

.field public static final whitelist CONTENT_MAIN:I = 0x0

.field public static final whitelist CONTENT_MUSIC_AND_EFFECTS:I = 0x1

.field public static final whitelist CONTENT_UNKNOWN:I = -0x1

.field public static final whitelist CONTENT_VISUALLY_IMPAIRED:I = 0x2

.field public static final whitelist CONTENT_VOICEOVER:I = 0x7

.field public static final whitelist MASTERED_FOR_3D:I = 0x3

.field public static final whitelist MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final whitelist MASTERED_FOR_STEREO:I = 0x1

.field public static final whitelist MASTERED_FOR_SURROUND:I = 0x2

.field public static final whitelist MASTERING_NOT_INDICATED:I = 0x0

.field private static final blacklist UNKNOWN_ID:I = -0x1


# instance fields
.field private final greylist-max-o mAudioDescriptionAvailable:Z

.field private final greylist-max-o mDialogueEnhancementAvailable:Z

.field private final greylist-max-o mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLanguage:Landroid/icu/util/ULocale;

.field private final greylist-max-o mMasteringIndication:I

.field private final greylist-max-o mPresentationId:I

.field private final greylist-max-o mProgramId:I

.field private final greylist-max-o mSpokenSubtitlesAvailable:Z


# direct methods
.method private constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V
    .locals 1
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I
    .param p3, "language"    # Landroid/icu/util/ULocale;
    .param p4, "masteringIndication"    # I
    .param p5, "audioDescriptionAvailable"    # Z
    .param p6, "spokenSubtitlesAvailable"    # Z
    .param p7, "dialogueEnhancementAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/icu/util/ULocale;",
            "IZZZ",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p8, "labels":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    .line 197
    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 198
    iput-object p3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 199
    iput p4, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 200
    iput-boolean p5, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 201
    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 202
    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    .line 204
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;Landroid/media/AudioPresentation-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/AudioPresentation;-><init>(IILandroid/icu/util/ULocale;IZZZLjava/util/Map;)V

    return-void
.end method

.method private blacklist getULabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getULocale()Landroid/icu/util/ULocale;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 289
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 290
    return v0

    .line 292
    :cond_0
    instance-of v1, p1, Landroid/media/AudioPresentation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 293
    return v2

    .line 295
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/AudioPresentation;

    .line 296
    .local v1, "obj":Landroid/media/AudioPresentation;
    iget v3, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 297
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 298
    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 299
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->getMasteringIndication()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 300
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasAudioDescription()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 301
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasSpokenSubtitles()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 302
    invoke-virtual {v1}, Landroid/media/AudioPresentation;->hasDialogueEnhancement()Z

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    .line 303
    invoke-direct {v1}, Landroid/media/AudioPresentation;->getULabels()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 296
    :goto_0
    return v0
.end method

.method public whitelist getLabels()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 229
    .local v0, "localeLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 230
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/util/ULocale;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 232
    :cond_0
    return-object v0
.end method

.method public whitelist getLocale()Ljava/util/Locale;
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMasteringIndication()I
    .locals 1

    .line 260
    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return v0
.end method

.method public whitelist getPresentationId()I
    .locals 1

    .line 211
    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return v0
.end method

.method public whitelist getProgramId()I
    .locals 1

    .line 219
    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return v0
.end method

.method public whitelist hasAudioDescription()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return v0
.end method

.method public whitelist hasDialogueEnhancement()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return v0
.end method

.method public whitelist hasSpokenSubtitles()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 308
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    .line 310
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 312
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 313
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    .line 315
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 308
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ presentation id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", program id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", labels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mastering indication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", audio description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", spoken subtitles="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dialogue enhancement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
