.class Lcom/oplus/content/OplusRemovableAppInfo$1;
.super Ljava/lang/Object;
.source "OplusRemovableAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusRemovableAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/content/OplusRemovableAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/content/OplusRemovableAppInfo;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 56
    new-instance v0, Lcom/oplus/content/OplusRemovableAppInfo;

    invoke-direct {v0, p1}, Lcom/oplus/content/OplusRemovableAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/content/OplusRemovableAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/content/OplusRemovableAppInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/content/OplusRemovableAppInfo;
    .locals 1
    .param p1, "size"    # I

    .line 61
    new-array v0, p1, [Lcom/oplus/content/OplusRemovableAppInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/oplus/content/OplusRemovableAppInfo$1;->newArray(I)[Lcom/oplus/content/OplusRemovableAppInfo;

    move-result-object p1

    return-object p1
.end method
