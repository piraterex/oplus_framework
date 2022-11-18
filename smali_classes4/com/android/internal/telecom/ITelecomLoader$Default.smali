.class public Lcom/android/internal/telecom/ITelecomLoader$Default;
.super Ljava/lang/Object;
.source "ITelecomLoader.java"

# interfaces
.implements Lcom/android/internal/telecom/ITelecomLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ITelecomLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createTelecomService(Lcom/android/internal/telecom/IInternalServiceRetriever;)Lcom/android/internal/telecom/ITelecomService;
    .locals 1
    .param p1, "retriever"    # Lcom/android/internal/telecom/IInternalServiceRetriever;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
