.class public final Landroid/content/pm/verify/domain/DomainVerificationManager;
.super Ljava/lang/Object;
.source "DomainVerificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/verify/domain/DomainVerificationManager$Error;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_DOMAIN_SET_ID_INVALID:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNABLE_TO_APPROVE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ERROR_UNKNOWN_DOMAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_VERIFICATION_REQUEST:Ljava/lang/String; = "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist INTERNAL_ERROR_NAME_NOT_FOUND:I = 0x1

.field public static final whitelist STATUS_OK:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/pm/verify/domain/IDomainVerificationManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "domainVerificationManager"    # Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 156
    return-void
.end method

.method private blacklist rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 377
    instance-of v0, p1, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_2

    .line 378
    move-object v0, p1

    check-cast v0, Landroid/os/ServiceSpecificException;

    iget v0, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 379
    .local v0, "serviceSpecificErrorCode":I
    if-nez p2, :cond_0

    .line 380
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 383
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 384
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 387
    :cond_1
    return-object p1

    .line 388
    .end local v0    # "serviceSpecificErrorCode":I
    :cond_2
    instance-of v0, p1, Landroid/os/RemoteException;

    if-eqz v0, :cond_3

    .line 389
    move-object v0, p1

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0

    .line 391
    :cond_3
    return-object p1
.end method

.method private blacklist validateInput(Ljava/util/UUID;Ljava/util/Set;)V
    .locals 2
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 398
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided domain set cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainSetId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0, p1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 193
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    .line 195
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 196
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 198
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 194
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getDomainVerificationUserState(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 334
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 333
    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getDomainVerificationUserState(Ljava/lang/String;I)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, p1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 337
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    .line 339
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 340
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 342
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 338
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist getOwnersForDomain(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedSet<",
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation

    .line 364
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 366
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 365
    invoke-interface {v0, p1, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->getOwnersForDomain(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "orderedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    new-instance v1, Ljava/util/TreeSet;

    .line 368
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 369
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/verify/domain/DomainOwner;>;"
    invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    return-object v1

    .line 371
    .end local v0    # "orderedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/verify/domain/DomainOwner;>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Landroid/content/pm/verify/domain/DomainOwner;>;"
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist queryValidVerificationPackageNames()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-interface {v0}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->queryValidVerificationPackageNames()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 255
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 255
    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    nop

    .line 267
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 259
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    .line 261
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 262
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 260
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationStatus(Ljava/util/UUID;Ljava/util/Set;I)I
    .locals 3
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "state"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 223
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    .line 226
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v1, v2, p3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationStatus(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 230
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    .line 232
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 235
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 231
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method

.method public whitelist setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    .locals 4
    .param p1, "domainSetId"    # Ljava/util/UUID;
    .param p3, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 305
    .local p2, "domains":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->validateInput(Ljava/util/UUID;Ljava/util/Set;)V

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mDomainVerificationManager:Landroid/content/pm/verify/domain/IDomainVerificationManager;

    .line 309
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/pm/verify/domain/DomainSet;

    invoke-direct {v2, p2}, Landroid/content/pm/verify/domain/DomainSet;-><init>(Ljava/util/Set;)V

    iget-object v3, p0, Landroid/content/pm/verify/domain/DomainVerificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 308
    invoke-interface {v0, v1, v2, p3, v3}, Landroid/content/pm/verify/domain/IDomainVerificationManager;->setDomainVerificationUserSelection(Ljava/lang/String;Landroid/content/pm/verify/domain/DomainSet;ZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/pm/verify/domain/DomainVerificationManager;->rethrow(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/Exception;

    move-result-object v1

    .line 312
    .local v1, "converted":Ljava/lang/Exception;
    instance-of v2, v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    if-nez v2, :cond_1

    .line 314
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 315
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 317
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 313
    :cond_1
    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    throw v2
.end method
