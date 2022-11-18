.class Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;
.super Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;
.source "TelephonyRegistryManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyRegistryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierPrivilegesCallbackWrapper"
.end annotation


# instance fields
.field private final blacklist mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "callback"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 1297
    invoke-direct {p0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;-><init>()V

    .line 1298
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1299
    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1300
    return-void
.end method

.method static synthetic blacklist lambda$onCarrierPrivilegesChanged$0(Ljava/util/Set;Ljava/util/Set;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .locals 0
    .param p0, "privilegedPkgNamesSet"    # Ljava/util/Set;
    .param p1, "privilegedUidsSet"    # Ljava/util/Set;
    .param p2, "cpc"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1315
    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCarrierServiceChanged$2(Ljava/lang/String;ILandroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "cpc"    # Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1326
    invoke-interface {p2, p0, p1}, Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;->onCarrierServiceChanged(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onCarrierPrivilegesChanged$1$android-telephony-TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .param p1, "privilegedPkgNamesSet"    # Ljava/util/Set;
    .param p2, "privilegedUidsSet"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1311
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1313
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 1311
    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method synthetic blacklist lambda$onCarrierServiceChanged$3$android-telephony-TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 1325
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/ref/WeakReference;)V

    new-instance v1, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 1323
    invoke-virtual {p0, v0, v2, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public blacklist onCarrierPrivilegesChanged(Ljava/util/List;[I)V
    .locals 3
    .param p2, "privilegedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)V"
        }
    .end annotation

    .line 1306
    .local p1, "privilegedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    .line 1307
    .local v0, "privilegedPkgNamesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v1

    .line 1308
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    .line 1307
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1309
    .local v1, "privilegedUidsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v2, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1317
    return-void
.end method

.method public blacklist onCarrierServiceChanged(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1321
    new-instance v0, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/TelephonyRegistryManager$CarrierPrivilegesCallbackWrapper;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1327
    return-void
.end method
