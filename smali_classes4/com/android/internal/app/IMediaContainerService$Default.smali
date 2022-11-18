.class public Lcom/android/internal/app/IMediaContainerService$Default;
.super Ljava/lang/Object;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist copyPackage(Ljava/lang/String;Lcom/android/internal/os/IParcelFileDescriptorFactory;)I
    .locals 1
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "target"    # Lcom/android/internal/os/IParcelFileDescriptorFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;
    .locals 1
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "abiOverride"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
