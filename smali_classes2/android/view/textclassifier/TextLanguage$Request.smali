.class public final Landroid/view/textclassifier/TextLanguage$Request;
.super Ljava/lang/Object;
.source "TextLanguage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLanguage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLanguage$Request$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLanguage$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final blacklist mText:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextLanguage$Request;->readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 214
    new-instance v0, Landroid/view/textclassifier/TextLanguage$Request$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLanguage$Request$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLanguage$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    .line 232
    iput-object p2, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    .line 233
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;Landroid/view/textclassifier/TextLanguage$Request-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextLanguage$Request;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 297
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 298
    .local v1, "extra":Landroid/os/Bundle;
    const-class v2, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 300
    .local v2, "systemTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    new-instance v3, Landroid/view/textclassifier/TextLanguage$Request;

    invoke-direct {v3, v0, v1}, Landroid/view/textclassifier/TextLanguage$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    .line 301
    .local v3, "request":Landroid/view/textclassifier/TextLanguage$Request;
    invoke-virtual {v3, v2}, Landroid/view/textclassifier/TextLanguage$Request;->setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V

    .line 302
    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 280
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .locals 0
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 260
    iput-object p1, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 261
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 290
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Landroid/view/textclassifier/TextLanguage$Request;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    return-void
.end method
