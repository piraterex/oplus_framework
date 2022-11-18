.class Landroid/app/tare/IEconomyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEconomyManager.java"

# interfaces
.implements Landroid/app/tare/IEconomyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/tare/IEconomyManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/app/tare/IEconomyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 90
    iget-object v0, p0, Landroid/app/tare/IEconomyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "android.app.tare.IEconomyManager"

    return-object v0
.end method
