.class Landroid/service/contentcapture/ActivityEvent$1;
.super Ljava/lang/Object;
.source "ActivityEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/ActivityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/contentcapture/ActivityEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/ActivityEvent;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 152
    const-class v0, Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 153
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .local v1, "eventType":I
    new-instance v2, Landroid/service/contentcapture/ActivityEvent;

    invoke-direct {v2, v0, v1}, Landroid/service/contentcapture/ActivityEvent;-><init>(Landroid/content/ComponentName;I)V

    return-object v2
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ActivityEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/contentcapture/ActivityEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/contentcapture/ActivityEvent;
    .locals 1
    .param p1, "size"    # I

    .line 160
    new-array v0, p1, [Landroid/service/contentcapture/ActivityEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Landroid/service/contentcapture/ActivityEvent$1;->newArray(I)[Landroid/service/contentcapture/ActivityEvent;

    move-result-object p1

    return-object p1
.end method
