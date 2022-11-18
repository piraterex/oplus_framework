.class public final Landroid/view/translation/TranslationResponse;
.super Ljava/lang/Object;
.source "TranslationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponse$Builder;,
        Landroid/view/translation/TranslationResponse$TranslationStatus;,
        Landroid/view/translation/TranslationResponse$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRANSLATION_STATUS_CONTEXT_UNSUPPORTED:I = 0x2

.field public static final whitelist TRANSLATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist TRANSLATION_STATUS_UNKNOWN_ERROR:I = 0x1


# instance fields
.field private final blacklist mFinalResponse:Z

.field private final blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslationStatus:I

.field private final blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultFinalResponse()Z
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultFinalResponse()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 319
    new-instance v0, Landroid/view/translation/TranslationResponse$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponse$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .locals 5
    .param p1, "translationStatus"    # I
    .param p4, "finalResponse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;Z)V"
        }
    .end annotation

    .line 189
    .local p2, "translationResponseValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/TranslationResponseValue;>;"
    .local p3, "viewTranslationResponses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 192
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "translationStatus was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_1
    :goto_0
    iput-object p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 203
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 205
    iput-object p3, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 206
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 208
    iput-boolean p4, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 211
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 290
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 291
    .local v1, "finalResponse":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 292
    .local v4, "translationStatus":I
    const-class v5, Landroid/view/translation/TranslationResponseValue;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v5

    .line 293
    .local v5, "translationResponseValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/TranslationResponseValue;>;"
    const-class v6, Landroid/view/translation/ViewTranslationResponse;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v6

    .line 295
    .local v6, "viewTranslationResponses":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/translation/ViewTranslationResponse;>;"
    iput v4, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 297
    if-eqz v4, :cond_2

    if-eq v4, v3, :cond_2

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    goto :goto_1

    .line 300
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "translationStatus was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 307
    :cond_2
    :goto_1
    iput-object v5, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 308
    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 310
    iput-object v6, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 311
    const-class v2, Landroid/annotation/NonNull;

    invoke-static {v2, v3, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 313
    iput-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 316
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    return-void
.end method

.method private static blacklist defaultFinalResponse()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist defaultTranslationResponseValues()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultViewTranslationResponses()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public static blacklist translationStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 173
    packed-switch p0, :pswitch_data_0

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "TRANSLATION_STATUS_CONTEXT_UNSUPPORTED"

    return-object v0

    .line 177
    :pswitch_1
    const-string v0, "TRANSLATION_STATUS_UNKNOWN_ERROR"

    return-object v0

    .line 175
    :pswitch_2
    const-string v0, "TRANSLATION_STATUS_SUCCESS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTranslationResponseValues()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getTranslationStatus()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    return v0
.end method

.method public whitelist getViewTranslationResponses()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist isFinalResponse()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponse { translationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 257
    invoke-static {v1}, Landroid/view/translation/TranslationResponse;->translationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationResponseValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTranslationResponses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 272
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 273
    iget v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 275
    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 276
    return-void
.end method
