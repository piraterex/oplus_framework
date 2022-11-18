.class public interface abstract Landroid/app/cloudsearch/ICloudSearchManagerCallback;
.super Ljava/lang/Object;
.source "ICloudSearchManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/ICloudSearchManagerCallback$Stub;,
        Landroid/app/cloudsearch/ICloudSearchManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.cloudsearch.ICloudSearchManagerCallback"


# virtual methods
.method public abstract blacklist onSearchFailed(Landroid/app/cloudsearch/SearchResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSearchSucceeded(Landroid/app/cloudsearch/SearchResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
