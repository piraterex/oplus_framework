.class public interface abstract Lcom/oplus/app/IActivityMultiWindowAllowanceObserver;
.super Ljava/lang/Object;
.source "IActivityMultiWindowAllowanceObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IActivityMultiWindowAllowanceObserver$Stub;,
        Lcom/oplus/app/IActivityMultiWindowAllowanceObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IActivityMultiWindowAllowanceObserver"


# virtual methods
.method public abstract blacklist onMultiWindowAllowanceChanged(Lcom/oplus/app/ActivityMultiWindowAllowance;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
