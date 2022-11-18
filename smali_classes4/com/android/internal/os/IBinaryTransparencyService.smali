.class public interface abstract Lcom/android/internal/os/IBinaryTransparencyService;
.super Ljava/lang/Object;
.source "IBinaryTransparencyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IBinaryTransparencyService$Stub;,
        Lcom/android/internal/os/IBinaryTransparencyService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IBinaryTransparencyService"


# virtual methods
.method public abstract blacklist getApexInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSignedImageInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
