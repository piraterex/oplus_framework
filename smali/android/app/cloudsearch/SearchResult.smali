.class public final Landroid/app/cloudsearch/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResult$Builder;,
        Landroid/app/cloudsearch/SearchResult$SearchResultExtraInfoKey;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRAINFO_ACTION_APP_CARD:Ljava/lang/String; = "android.app.cloudsearch.ACTION_APP_CARD"

.field public static final whitelist EXTRAINFO_ACTION_BUTTON_IMAGE_PREREGISTERING:Ljava/lang/String; = "android.app.cloudsearch.ACTION_BUTTON_IMAGE"

.field public static final whitelist EXTRAINFO_ACTION_BUTTON_TEXT_PREREGISTERING:Ljava/lang/String; = "android.app.cloudsearch.ACTION_BUTTON_TEXT"

.field public static final whitelist EXTRAINFO_ACTION_INSTALL_BUTTON:Ljava/lang/String; = "android.app.cloudsearch.ACTION_INSTALL_BUTTON"

.field public static final whitelist EXTRAINFO_APP_BADGES:Ljava/lang/String; = "android.app.cloudsearch.APP_BADGES"

.field public static final whitelist EXTRAINFO_APP_CONTAINS_ADS_DISCLAIMER:Ljava/lang/String; = "android.app.cloudsearch.APP_CONTAINS_ADS_DISCLAIMER"

.field public static final whitelist EXTRAINFO_APP_CONTAINS_IAP_DISCLAIMER:Ljava/lang/String; = "android.app.cloudsearch.APP_CONTAINS_IAP_DISCLAIMER"

.field public static final whitelist EXTRAINFO_APP_DEVELOPER_NAME:Ljava/lang/String; = "android.app.cloudsearch.APP_DEVELOPER_NAME"

.field public static final whitelist EXTRAINFO_APP_DOMAIN_URL:Ljava/lang/String; = "android.app.cloudsearch.APP_DOMAIN_URL"

.field public static final whitelist EXTRAINFO_APP_IARC:Ljava/lang/String; = "android.app.cloudsearch.APP_IARC"

.field public static final whitelist EXTRAINFO_APP_ICON:Ljava/lang/String; = "android.app.cloudsearch.APP_ICON"

.field public static final whitelist EXTRAINFO_APP_INSTALL_COUNT:Ljava/lang/String; = "android.app.cloudsearch.APP_INSTALL_COUNT"

.field public static final whitelist EXTRAINFO_APP_PACKAGE_NAME:Ljava/lang/String; = "android.app.cloudsearch.APP_PACKAGE_NAME"

.field public static final whitelist EXTRAINFO_APP_REVIEW_COUNT:Ljava/lang/String; = "android.app.cloudsearch.APP_REVIEW_COUNT"

.field public static final whitelist EXTRAINFO_APP_SIZE_BYTES:Ljava/lang/String; = "android.app.cloudsearch.APP_SIZE_BYTES"

.field public static final whitelist EXTRAINFO_APP_STAR_RATING:Ljava/lang/String; = "android.app.cloudsearch.APP_STAR_RATING"

.field public static final whitelist EXTRAINFO_LONG_DESCRIPTION:Ljava/lang/String; = "android.app.cloudsearch.LONG_DESCRIPTION"

.field public static final whitelist EXTRAINFO_SCREENSHOTS:Ljava/lang/String; = "android.app.cloudsearch.SCREENSHOTS"

.field public static final whitelist EXTRAINFO_SHORT_DESCRIPTION:Ljava/lang/String; = "android.app.cloudsearch.SHORT_DESCRIPTION"

.field public static final whitelist EXTRAINFO_WEB_ICON:Ljava/lang/String; = "android.app.cloudsearch.WEB_ICON"

.field public static final whitelist EXTRAINFO_WEB_URL:Ljava/lang/String; = "android.app.cloudsearch.WEB_URL"


# instance fields
.field private blacklist mExtraInfos:Landroid/os/Bundle;

.field private final blacklist mScore:F

.field private final blacklist mSnippet:Ljava/lang/String;

.field private final blacklist mTitle:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Landroid/app/cloudsearch/SearchResult$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResult$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/cloudsearch/SearchResult$Builder;)V
    .locals 1
    .param p1, "b"    # Landroid/app/cloudsearch/SearchResult$Builder;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResult$Builder;->-$$Nest$fgetmTitle(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResult$Builder;->-$$Nest$fgetmSnippet(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResult$Builder;->-$$Nest$fgetmScore(Landroid/app/cloudsearch/SearchResult$Builder;)F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    .line 189
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResult$Builder;->-$$Nest$fgetmExtraInfos(Landroid/app/cloudsearch/SearchResult$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    .line 190
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    .line 153
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/cloudsearch/SearchResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/cloudsearch/SearchResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/os/Bundle;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "snippet"    # Ljava/lang/String;
    .param p3, "score"    # F
    .param p4, "extraInfos"    # Landroid/os/Bundle;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    .line 158
    iput p3, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    .line 159
    iput-object p4, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    .line 160
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;FLandroid/os/Bundle;Landroid/app/cloudsearch/SearchResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/cloudsearch/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 224
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 225
    return v0

    .line 228
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/cloudsearch/SearchResult;

    .line 233
    .local v2, "that":Landroid/app/cloudsearch/SearchResult;
    iget-object v3, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    .line 234
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    iget v4, v2, Landroid/app/cloudsearch/SearchResult;->mScore:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    .line 236
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 233
    :goto_0
    return v0

    .line 229
    .end local v2    # "that":Landroid/app/cloudsearch/SearchResult;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getExtraInfos()Landroid/os/Bundle;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getScore()F
    .locals 1

    .line 176
    iget v0, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    return v0
.end method

.method public whitelist getSnippet()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 241
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 211
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mSnippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Landroid/app/cloudsearch/SearchResult;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 214
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult;->mExtraInfos:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method
