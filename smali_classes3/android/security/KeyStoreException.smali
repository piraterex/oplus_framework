.class public Landroid/security/KeyStoreException;
.super Ljava/lang/Exception;
.source "KeyStoreException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStoreException$PublicErrorInformation;,
        Landroid/security/KeyStoreException$RetryPolicy;,
        Landroid/security/KeyStoreException$PublicErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_ATTESTATION_CHALLENGE_TOO_LARGE:I = 0x9

.field public static final whitelist ERROR_ATTESTATION_KEYS_UNAVAILABLE:I = 0x10

.field public static final whitelist ERROR_ID_ATTESTATION_FAILURE:I = 0x8

.field public static final whitelist ERROR_INCORRECT_USAGE:I = 0xd

.field public static final whitelist ERROR_INTERNAL_SYSTEM_ERROR:I = 0x4

.field public static final whitelist ERROR_KEYMINT_FAILURE:I = 0xa

.field public static final whitelist ERROR_KEYSTORE_FAILURE:I = 0xb

.field public static final whitelist ERROR_KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final whitelist ERROR_KEY_CORRUPTED:I = 0x7

.field public static final whitelist ERROR_KEY_DOES_NOT_EXIST:I = 0x6

.field public static final whitelist ERROR_KEY_NOT_TEMPORALLY_VALID:I = 0xe

.field public static final whitelist ERROR_KEY_OPERATION_EXPIRED:I = 0xf

.field public static final whitelist ERROR_OTHER:I = 0x1

.field public static final whitelist ERROR_PERMISSION_DENIED:I = 0x5

.field public static final whitelist ERROR_UNIMPLEMENTED:I = 0xc

.field public static final whitelist ERROR_USER_AUTHENTICATION_REQUIRED:I = 0x2

.field private static final blacklist GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist IS_SYSTEM_ERROR:I = 0x2

.field private static final blacklist IS_TRANSIENT_ERROR:I = 0x4

.field private static final blacklist KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

.field private static final blacklist REQUIRES_USER_AUTHENTICATION:I = 0x8

.field public static final whitelist RETRY_NEVER:I = 0x1

.field public static final whitelist RETRY_WHEN_CONNECTIVITY_AVAILABLE:I = 0x3

.field public static final whitelist RETRY_WITH_EXPONENTIAL_BACKOFF:I = 0x2

.field public static final blacklist RKP_FETCHING_PENDING_CONNECTIVITY:I = 0x3

.field public static final blacklist RKP_SERVER_REFUSED_ISSUANCE:I = 0x2

.field public static final blacklist RKP_SUCCESS:I = 0x0

.field public static final blacklist RKP_TEMPORARILY_UNAVAILABLE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "KeyStoreException"

.field private static final blacklist sErrorCodeToFailureInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/security/KeyStoreException$PublicErrorInformation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mErrorCode:I

.field private final blacklist mRkpStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 412
    new-instance v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v0, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 415
    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v4, 0xb

    invoke-direct {v3, v1, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v3, Landroid/security/KeyStoreException;->GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 418
    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v4, 0x2

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v3, Landroid/security/KeyStoreException;->KEYMINT_UNIMPLEMENTED_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 421
    new-instance v5, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v5, Landroid/security/KeyStoreException;->KEYMINT_RETRYABLE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 425
    new-instance v7, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v8, 0xd

    invoke-direct {v7, v1, v8}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v7, Landroid/security/KeyStoreException;->KEYMINT_INCORRECT_USAGE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 428
    new-instance v8, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v9, 0xe

    invoke-direct {v8, v1, v9}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    sput-object v8, Landroid/security/KeyStoreException;->KEYMINT_TEMPORAL_VALIDITY_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 432
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    .line 445
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const/4 v10, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const/4 v10, -0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const/4 v10, -0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/4 v10, -0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const/4 v10, -0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v10, -0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const/4 v10, -0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const/16 v10, -0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const/16 v10, -0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const/16 v10, -0xb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/16 v10, -0xc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const/16 v10, -0xd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const/16 v10, -0xe

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/16 v10, -0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const/16 v10, -0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/16 v10, -0x11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/16 v10, -0x12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const/16 v10, -0x13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const/16 v10, -0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const/16 v10, -0x15

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/16 v10, -0x16

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/16 v10, -0x17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/16 v10, -0x18

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/16 v10, -0x19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const/16 v8, -0x1a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v11, 0x8

    invoke-direct {v10, v11, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const/16 v8, -0x1b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/16 v8, -0x1c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v12, 0xf

    invoke-direct {v10, v6, v12}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const/16 v8, -0x1d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    const/16 v8, -0x1e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    const/16 v8, -0x1f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/16 v8, -0x20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const/16 v8, -0x21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const/16 v8, -0x22

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const/16 v8, -0x23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const/16 v8, -0x24

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const/16 v8, -0x25

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const/16 v8, -0x26

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const/16 v8, -0x27

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/16 v8, -0x28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const/16 v8, -0x29

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const/16 v8, -0x2c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/16 v8, -0x2d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const/16 v8, -0x2e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const/16 v8, -0x2f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const/16 v8, -0x30

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/16 v8, -0x31

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const/16 v8, -0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const/16 v8, -0x33

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const/16 v8, -0x34

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const/16 v8, -0x35

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const/16 v8, -0x36

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const/16 v8, -0x37

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/16 v8, -0x38

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const/16 v8, -0x39

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const/16 v8, -0x3a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/16 v8, -0x3b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const/16 v8, -0x3c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/16 v8, -0x3d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/16 v8, -0x3f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/16 v8, -0x40

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v10, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const/16 v8, -0x41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const/16 v5, -0x42

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v8, v4, v11}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/16 v5, -0x43

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const/16 v5, -0x44

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const/16 v5, -0x48

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v8, v2, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const/16 v5, -0x4d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const/16 v5, -0x4e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const/16 v5, -0x4f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/16 v5, -0x50

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const/16 v5, -0x51

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const/16 v5, -0x55

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const/16 v5, -0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const/16 v3, -0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v5, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const/16 v2, -0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v2, v11, v4}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v3, v4, v0}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v3, v4, v0}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v3, v1, v6}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v3, v1, v0}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Landroid/security/KeyStoreException$PublicErrorInformation;

    invoke-direct {v2, v1, v6}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/security/KeyStoreException$PublicErrorInformation;

    const/16 v2, 0x10

    invoke-direct {v1, v4, v2}, Landroid/security/KeyStoreException$PublicErrorInformation;-><init>(II)V

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 252
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 253
    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    .line 254
    invoke-static {p1}, Landroid/security/KeyStoreException;->initializeRkpStatusForRegularErrors(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    .line 255
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "rkpStatus"    # I

    .line 272
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 273
    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    .line 274
    iput p3, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    .line 275
    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Providing RKP status for error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no effect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyStoreException"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "keystoreErrorMessage"    # Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (internal Keystore code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 264
    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    .line 265
    invoke-static {p1}, Landroid/security/KeyStoreException;->initializeRkpStatusForRegularErrors(I)I

    move-result v0

    iput v0, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    .line 266
    return-void
.end method

.method private static blacklist getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;
    .locals 2
    .param p0, "internalErrorCode"    # I

    .line 385
    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/KeyStoreException$PublicErrorInformation;

    .line 386
    .local v0, "errorInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    if-eqz v0, :cond_0

    .line 387
    return-object v0

    .line 395
    :cond_0
    if-lez p0, :cond_1

    .line 396
    sget-object v1, Landroid/security/KeyStoreException;->GENERAL_KEYSTORE_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    return-object v1

    .line 398
    :cond_1
    sget-object v1, Landroid/security/KeyStoreException;->GENERAL_KEYMINT_ERROR:Landroid/security/KeyStoreException$PublicErrorInformation;

    return-object v1
.end method

.method public static blacklist hasFailureInfoForError(I)Z
    .locals 2
    .param p0, "internalErrorCode"    # I

    .line 440
    sget-object v0, Landroid/security/KeyStoreException;->sErrorCodeToFailureInfo:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist initializeRkpStatusForRegularErrors(I)I
    .locals 2
    .param p0, "errorCode"    # I

    .line 239
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    .line 240
    const-string v0, "KeyStoreException"

    const-string v1, "RKP error code without RKP status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x2

    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .locals 1

    .line 287
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    return v0
.end method

.method public whitelist getNumericErrorCode()I
    .locals 2

    .line 297
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    .line 298
    .local v0, "failureInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->errorCode:I

    return v1
.end method

.method public whitelist getRetryPolicy()I
    .locals 4

    .line 355
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    .line 357
    .local v0, "failureInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 358
    packed-switch v1, :pswitch_data_0

    .line 366
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 367
    goto :goto_0

    .line 362
    :pswitch_0
    const/4 v1, 0x3

    return v1

    .line 364
    :pswitch_1
    return v3

    .line 360
    :pswitch_2
    return v2

    .line 367
    :cond_0
    move v2, v3

    .line 366
    :goto_0
    return v2

    .line 370
    :cond_1
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 371
    return v2

    .line 373
    :cond_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist isSystemError()Z
    .locals 2

    .line 345
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    .line 346
    .local v0, "failureInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist isTransientFailure()Z
    .locals 6

    .line 310
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    .line 312
    .local v0, "failureInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    iget v1, p0, Landroid/security/KeyStoreException;->mRkpStatus:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget v4, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_0

    .line 313
    packed-switch v1, :pswitch_data_0

    .line 319
    :pswitch_0
    return v3

    .line 316
    :pswitch_1
    return v2

    .line 322
    :cond_0
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist requiresUserAuthentication()Z
    .locals 2

    .line 332
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v0}, Landroid/security/KeyStoreException;->getErrorInformation(I)Landroid/security/KeyStoreException$PublicErrorInformation;

    move-result-object v0

    .line 333
    .local v0, "failureInfo":Landroid/security/KeyStoreException$PublicErrorInformation;
    iget v1, v0, Landroid/security/KeyStoreException$PublicErrorInformation;->indicators:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 379
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 380
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getNumericErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 379
    const-string v1, " (public error code: %d internal Keystore code: %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "errorCodes":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
