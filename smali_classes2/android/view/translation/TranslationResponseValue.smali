.class public final Landroid/view/translation/TranslationResponseValue;
.super Ljava/lang/Object;
.source "TranslationResponseValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponseValue$Builder;,
        Landroid/view/translation/TranslationResponseValue$Status;,
        Landroid/view/translation/TranslationResponseValue$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFINITIONS:Ljava/lang/String; = "android.view.translation.extra.DEFINITIONS"

.field public static final whitelist STATUS_ERROR:I = 0x1

.field public static final whitelist STATUS_SUCCESS:I


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStatusCode:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultText()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->defaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 336
    new-instance v0, Landroid/view/translation/TranslationResponseValue$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponseValue$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponseValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "transliteration"    # Ljava/lang/CharSequence;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 179
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), STATUS_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_1
    :goto_0
    iput-object p2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 188
    iput-object p3, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 189
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    iput-object p4, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 194
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 311
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 312
    .local v1, "statusCode":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 314
    .local v4, "extras":Landroid/os/Bundle;
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    .line 316
    .local v5, "transliteration":Ljava/lang/CharSequence;
    :goto_1
    iput v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 318
    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    goto :goto_2

    .line 320
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "statusCode was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), STATUS_ERROR("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    :cond_3
    :goto_2
    iput-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 327
    iput-object v4, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 328
    const-class v6, Landroid/annotation/NonNull;

    invoke-static {v6, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 330
    iput-object v5, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 333
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 460
    return-void
.end method

.method private static blacklist defaultExtras()Landroid/os/Bundle;
    .locals 1

    .line 118
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method private static blacklist defaultText()Ljava/lang/CharSequence;
    .locals 1

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist defaultTransliteration()Ljava/lang/CharSequence;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist extrasEquals(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "other"    # Landroid/os/Bundle;

    .line 123
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static whitelist forError()Landroid/view/translation/TranslationResponseValue;
    .locals 4

    .line 110
    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 162
    packed-switch p0, :pswitch_data_0

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :pswitch_0
    const-string v0, "STATUS_ERROR"

    return-object v0

    .line 164
    :pswitch_1
    const-string v0, "STATUS_SUCCESS"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 257
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 258
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/view/translation/TranslationResponseValue;

    .line 262
    .local v2, "that":Landroid/view/translation/TranslationResponseValue;
    iget v3, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    iget v4, v2, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    .line 264
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    .line 265
    invoke-direct {p0, v3}, Landroid/view/translation/TranslationResponseValue;->extrasEquals(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 262
    :goto_0
    return v0

    .line 258
    .end local v2    # "that":Landroid/view/translation/TranslationResponseValue;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    return v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTransliteration()Ljava/lang/CharSequence;
    .locals 1

    .line 233
    iget-object v0, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    add-int/2addr v1, v2

    .line 277
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 278
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 279
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 280
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponseValue { statusCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    .line 243
    invoke-static {v1}, Landroid/view/translation/TranslationResponseValue;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", text = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transliteration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "flg":B
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 291
    :cond_0
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 292
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 293
    iget v1, p0, Landroid/view/translation/TranslationResponseValue;->mStatusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 295
    :cond_2
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 296
    iget-object v1, p0, Landroid/view/translation/TranslationResponseValue;->mTransliteration:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 297
    :cond_3
    return-void
.end method
