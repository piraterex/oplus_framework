.class public interface abstract Lcom/oplus/content/IOplusFeatureActionObserver;
.super Ljava/lang/Object;
.source "IOplusFeatureActionObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/IOplusFeatureActionObserver$Stub;,
        Lcom/oplus/content/IOplusFeatureActionObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.content.IOplusFeatureActionObserver"


# virtual methods
.method public abstract blacklist onFeaturesActionUpdate(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
