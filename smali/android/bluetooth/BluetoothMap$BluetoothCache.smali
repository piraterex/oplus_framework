.class Landroid/bluetooth/BluetoothMap$BluetoothCache;
.super Landroid/os/IpcDataCache;
.source "BluetoothMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/IpcDataCache<",
        "TQ;TR;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V
    .locals 6
    .param p1, "api"    # Ljava/lang/String;
    .param p2, "query"    # Landroid/os/IpcDataCache$QueryHandler;

    .line 365
    .local p0, "this":Landroid/bluetooth/BluetoothMap$BluetoothCache;, "Landroid/bluetooth/BluetoothMap$BluetoothCache<TQ;TR;>;"
    const/16 v1, 0x8

    const-string v2, "bluetooth"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/IpcDataCache;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IpcDataCache$QueryHandler;)V

    .line 366
    return-void
.end method
