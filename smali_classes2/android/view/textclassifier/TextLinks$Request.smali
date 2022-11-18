.class public final Landroid/view/textclassifier/TextLinks$Request;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mLegacyFallback:Z

.field private final blacklist mReferenceTime:Ljava/time/ZonedDateTime;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextLinks$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 575
    new-instance v0, Landroid/view/textclassifier/TextLinks$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultLocales"    # Landroid/os/LocaleList;
    .param p3, "entityConfig"    # Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .param p4, "legacyFallback"    # Z
    .param p5, "referenceTime"    # Ljava/time/ZonedDateTime;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    .line 353
    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 354
    iput-object p3, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 355
    iput-boolean p4, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    .line 356
    iput-object p5, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 357
    iput-object p6, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    .line 358
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks$Request-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLinks$Request;
    .locals 14
    .param p0, "in"    # Landroid/os/Parcel;

    .line 560
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 561
    .local v7, "text":Ljava/lang/String;
    const-class v0, Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/LocaleList;

    .line 562
    .local v8, "defaultLocales":Landroid/os/LocaleList;
    const-class v0, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/textclassifier/TextClassifier$EntityConfig;

    .line 563
    .local v9, "entityConfig":Landroid/view/textclassifier/TextClassifier$EntityConfig;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 564
    .local v10, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, "referenceTimeString":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 566
    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-static {v11}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    move-object v5, v0

    .line 567
    .local v5, "referenceTime":Ljava/time/ZonedDateTime;
    :goto_0
    const-class v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 569
    .local v12, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    new-instance v13, Landroid/view/textclassifier/TextLinks$Request;

    const/4 v4, 0x1

    move-object v0, v13

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/time/ZonedDateTime;Landroid/os/Bundle;)V

    .line 571
    .local v0, "request":Landroid/view/textclassifier/TextLinks$Request;
    invoke-virtual {v0, v12}, Landroid/view/textclassifier/TextLinks$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 572
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 546
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    .line 374
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 443
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .locals 1

    .line 403
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    .line 433
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 365
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o isLegacyFallback()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mLegacyFallback:Z

    return v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 423
    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 424
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 551
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 554
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 555
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 557
    return-void
.end method
