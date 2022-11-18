.class Landroid/app/ActivityTaskManager$RootTaskInfo$1;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTaskManager$RootTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/ActivityTaskManager$RootTaskInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 530
    new-instance v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/ActivityTaskManager$RootTaskInfo;-><init>(Landroid/os/Parcel;Landroid/app/ActivityTaskManager$RootTaskInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 527
    invoke-virtual {p0, p1}, Landroid/app/ActivityTaskManager$RootTaskInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/ActivityTaskManager$RootTaskInfo;
    .locals 1
    .param p1, "size"    # I

    .line 535
    new-array v0, p1, [Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 527
    invoke-virtual {p0, p1}, Landroid/app/ActivityTaskManager$RootTaskInfo$1;->newArray(I)[Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object p1

    return-object p1
.end method
