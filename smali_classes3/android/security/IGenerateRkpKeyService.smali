.class public interface abstract Landroid/security/IGenerateRkpKeyService;
.super Ljava/lang/Object;
.source "IGenerateRkpKeyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IGenerateRkpKeyService$Status;,
        Landroid/security/IGenerateRkpKeyService$Stub;,
        Landroid/security/IGenerateRkpKeyService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.IGenerateRkpKeyService"


# virtual methods
.method public abstract blacklist generateKey(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyKeyGenerated(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
