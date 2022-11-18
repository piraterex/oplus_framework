.class public interface abstract Lcom/oplus/content/IOplusFeatureMapObserver;
.super Ljava/lang/Object;
.source "IOplusFeatureMapObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/IOplusFeatureMapObserver$Stub;,
        Lcom/oplus/content/IOplusFeatureMapObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.content.IOplusFeatureMapObserver"


# virtual methods
.method public abstract blacklist onFeatureUpdate(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
