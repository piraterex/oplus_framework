.class public final Landroid/view/textclassifier/TextClassification$Request;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private final greylist-max-o mEndIndex:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mReferenceTime:Ljava/time/ZonedDateTime;

.field private final greylist-max-o mStartIndex:I

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassification$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 729
    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "defaultLocales"    # Landroid/os/LocaleList;
    .param p5, "referenceTime"    # Ljava/time/ZonedDateTime;
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    .line 529
    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    .line 530
    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    .line 531
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    .line 532
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    .line 533
    iput-object p6, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    .line 534
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;Landroid/view/textclassifier/TextClassification$Request-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassification$Request;
    .locals 15
    .param p0, "in"    # Landroid/os/Parcel;

    .line 713
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v7

    .line 714
    .local v7, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 715
    .local v8, "startIndex":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 716
    .local v9, "endIndex":I
    const-class v0, Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/LocaleList;

    .line 717
    .local v10, "defaultLocales":Landroid/os/LocaleList;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 718
    .local v11, "referenceTimeString":Ljava/lang/String;
    if-nez v11, :cond_0

    .line 719
    move-object v5, v1

    goto :goto_0

    :cond_0
    invoke-static {v11}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    move-object v5, v0

    .line 720
    .local v5, "referenceTime":Ljava/time/ZonedDateTime;
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 721
    .local v12, "extras":Landroid/os/Bundle;
    const-class v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 723
    .local v13, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    new-instance v14, Landroid/view/textclassifier/TextClassification$Request;

    move-object v0, v14

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object v4, v10

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/os/Bundle;)V

    .line 725
    .local v0, "request":Landroid/view/textclassifier/TextClassification$Request;
    invoke-virtual {v0, v13}, Landroid/view/textclassifier/TextClassification$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 726
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 585
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

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

    .line 567
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getEndIndex()I
    .locals 1

    .line 558
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 616
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getReferenceTime()Ljava/time/ZonedDateTime;
    .locals 1

    .line 576
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object v0
.end method

.method public whitelist getStartIndex()I
    .locals 1

    .line 550
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    return v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    .line 606
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 542
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 596
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 597
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 703
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 704
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 707
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mReferenceTime:Ljava/time/ZonedDateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 709
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 710
    return-void
.end method
