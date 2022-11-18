.class public final Landroid/view/translation/TranslationSpec;
.super Ljava/lang/Object;
.source "TranslationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationSpec$DataFormat;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_FORMAT_TEXT:I = 0x1


# instance fields
.field private final blacklist mDataFormat:I

.field private final blacklist mLanguage:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final blacklist mLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Landroid/view/translation/TranslationSpec$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationSpec$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/icu/util/ULocale;I)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "dataFormat"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    .line 90
    iput p2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    .line 91
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "language":Ljava/lang/String;
    invoke-static {p1}, Landroid/view/translation/TranslationSpec;->unparcelLocale(Landroid/os/Parcel;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 197
    .local v1, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, "dataFormat":I
    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    .line 200
    const-class v3, Ljava/lang/Deprecated;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Object;)V

    .line 202
    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput-object v1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    .line 205
    const-class v3, Landroid/annotation/NonNull;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput v2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    .line 208
    const-class v3, Landroid/view/translation/TranslationSpec$DataFormat;

    invoke-static {v3, v4, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 212
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "dataFormat"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    .line 76
    iput p2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    .line 77
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    .line 78
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    return-void
.end method

.method static blacklist unparcelLocale(Landroid/os/Parcel;)Landroid/icu/util/ULocale;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 67
    const-class v0, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 150
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/translation/TranslationSpec;

    .line 154
    .local v2, "that":Landroid/view/translation/TranslationSpec;
    iget-object v3, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    iget-object v4, v2, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    iget-object v4, v2, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    .line 156
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    iget v4, v2, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 150
    .end local v2    # "that":Landroid/view/translation/TranslationSpec;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getDataFormat()I
    .locals 1

    .line 126
    iget v0, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    return v0
.end method

.method public greylist getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLocale()Landroid/icu/util/ULocale;
    .locals 1

    .line 121
    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 166
    const/4 v0, 0x1

    .line 167
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    add-int/2addr v1, v2

    .line 170
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method blacklist parcelLocale(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationSpec { language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", locale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationSpec;->mLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 179
    iget-object v0, p0, Landroid/view/translation/TranslationSpec;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p1, p2}, Landroid/view/translation/TranslationSpec;->parcelLocale(Landroid/os/Parcel;I)V

    .line 181
    iget v0, p0, Landroid/view/translation/TranslationSpec;->mDataFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void
.end method
