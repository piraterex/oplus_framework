.class public interface abstract Lcom/android/modules/utils/ISynchronousResultReceiver;
.super Ljava/lang/Object;
.source "ISynchronousResultReceiver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;,
        Lcom/android/modules/utils/ISynchronousResultReceiver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.modules.utils.ISynchronousResultReceiver"


# virtual methods
.method public abstract blacklist send(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
