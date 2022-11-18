.class public interface abstract Landroid/location/IOplusLocationManager;
.super Ljava/lang/Object;
.source "IOplusLocationManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IOplusLocationManager$Stub;,
        Landroid/location/IOplusLocationManager$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.location.IOplusLocationManager"


# virtual methods
.method public abstract whitelist getInUsePackagesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist setDebugDump()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist setDebugOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist setDebugOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
