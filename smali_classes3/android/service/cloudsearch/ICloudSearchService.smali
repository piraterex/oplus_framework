.class public interface abstract Landroid/service/cloudsearch/ICloudSearchService;
.super Ljava/lang/Object;
.source "ICloudSearchService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/cloudsearch/ICloudSearchService$Stub;,
        Landroid/service/cloudsearch/ICloudSearchService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.cloudsearch.ICloudSearchService"


# virtual methods
.method public abstract blacklist onSearch(Landroid/app/cloudsearch/SearchRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
