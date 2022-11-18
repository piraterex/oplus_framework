.class Landroid/service/notification/NotificationListenerService$RankingMap$1;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService$RankingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/notification/NotificationListenerService$RankingMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2239
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;-><init>(Landroid/os/Parcel;Landroid/service/notification/NotificationListenerService$RankingMap-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2236
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1
    .param p1, "size"    # I

    .line 2244
    new-array v0, p1, [Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2236
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationListenerService$RankingMap$1;->newArray(I)[Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    return-object p1
.end method
