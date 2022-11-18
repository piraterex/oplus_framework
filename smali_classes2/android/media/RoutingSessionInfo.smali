.class public final Landroid/media/RoutingSessionInfo;
.super Ljava/lang/Object;
.source "RoutingSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RoutingSessionInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RoutingSessionInfo"


# instance fields
.field final blacklist mClientPackageName:Ljava/lang/String;

.field final blacklist mControlHints:Landroid/os/Bundle;

.field final blacklist mDeselectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mId:Ljava/lang/String;

.field final blacklist mIsSystemSession:Z

.field final blacklist mName:Ljava/lang/CharSequence;

.field final blacklist mOwnerPackageName:Ljava/lang/String;

.field final blacklist mProviderId:Ljava/lang/String;

.field final blacklist mSelectableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mSelectedRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTransferableRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mVolume:I

.field final blacklist mVolumeHandling:I

.field final blacklist mVolumeMax:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Landroid/media/RoutingSessionInfo$1;

    invoke-direct {v0}, Landroid/media/RoutingSessionInfo$1;-><init>()V

    sput-object v0, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/RoutingSessionInfo$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/media/RoutingSessionInfo$Builder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "builder must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    .line 74
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 75
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mOwnerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mSelectedRoutes:Ljava/util/List;

    .line 80
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 81
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mSelectableRoutes:Ljava/util/List;

    .line 82
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 81
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 83
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mDeselectableRoutes:Ljava/util/List;

    .line 84
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 85
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mTransferableRoutes:Ljava/util/List;

    .line 86
    invoke-direct {p0, v0}, Landroid/media/RoutingSessionInfo;->convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 88
    iget v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mVolumeHandling:I

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 89
    iget v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mVolumeMax:I

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 90
    iget v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mVolume:I

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 92
    iget-object v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mControlHints:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 93
    iget-boolean v0, p1, Landroid/media/RoutingSessionInfo$Builder;->mIsSystemSession:Z

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 94
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v0, "src must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    .line 100
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/media/RoutingSessionInfo;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    .line 116
    return-void
.end method

.method private blacklist convertToUniqueRouteIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    .local p1, "routeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 351
    const-string v0, "RoutingSessionInfo"

    const-string v1, "routeIds is null. Returning an empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 357
    return-object p1

    .line 360
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    .local v2, "routeId":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v2    # "routeId":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_2
    return-object v0
.end method

.method private static blacklist ensureList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 123
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist ensureString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 119
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 295
    return v0

    .line 297
    :cond_0
    instance-of v1, p1, Landroid/media/RoutingSessionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 298
    return v2

    .line 301
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 302
    .local v1, "other":Landroid/media/RoutingSessionInfo;
    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    .line 303
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    .line 304
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    .line 305
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    .line 306
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    .line 307
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    .line 308
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    .line 309
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    .line 310
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    iget v4, v1, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    iget v4, v1, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    iget v4, v1, Landroid/media/RoutingSessionInfo;->mVolume:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 302
    :goto_0
    return v0
.end method

.method public whitelist getClientPackageName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getControlHints()Landroid/os/Bundle;
    .locals 1

    .line 257
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getDeselectableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 2

    .line 140
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/MediaRouter2Utils;->toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/CharSequence;
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getOriginalId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProviderId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelectableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSelectedRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getTransferableRoutes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getVolume()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    return v0
.end method

.method public whitelist getVolumeHandling()I
    .locals 1

    .line 230
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    return v0
.end method

.method public whitelist getVolumeMax()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 318
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 318
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSystemSession()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string v1, "RoutingSessionInfo{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string v1, "sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 329
    const-string v1, ", clientPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 330
    const-string v1, ", selectedRoutes={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    const-string v3, ", selectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    const-string v3, ", deselectableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 339
    const-string v3, ", transferableRoutes={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 342
    const-string v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getVolumeHandling()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 343
    const-string v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 344
    const-string v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 346
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 276
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mProviderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectedRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 282
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mSelectableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 283
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mDeselectableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 284
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mTransferableRoutes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 285
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolumeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Landroid/media/RoutingSessionInfo;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object v0, p0, Landroid/media/RoutingSessionInfo;->mControlHints:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 289
    iget-boolean v0, p0, Landroid/media/RoutingSessionInfo;->mIsSystemSession:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 290
    return-void
.end method
