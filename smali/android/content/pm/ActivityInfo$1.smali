.class Landroid/content/pm/ActivityInfo$1;
.super Ljava/lang/Object;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1797
    new-instance v0, Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1795
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "size"    # I

    .line 1800
    new-array v0, p1, [Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1795
    invoke-virtual {p0, p1}, Landroid/content/pm/ActivityInfo$1;->newArray(I)[Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method
