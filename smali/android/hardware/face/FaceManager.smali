.class public Landroid/hardware/face/FaceManager;
.super Ljava/lang/Object;
.source "FaceManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricFaceConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceManager$MyHandler;,
        Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;,
        Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;,
        Landroid/hardware/face/FaceManager$OnEnrollCancelListener;,
        Landroid/hardware/face/FaceManager$GenerateChallengeCallback;,
        Landroid/hardware/face/FaceManager$GetFeatureCallback;,
        Landroid/hardware/face/FaceManager$SetFeatureCallback;,
        Landroid/hardware/face/FaceManager$LockoutResetCallback;,
        Landroid/hardware/face/FaceManager$RemovalCallback;,
        Landroid/hardware/face/FaceManager$EnrollmentCallback;,
        Landroid/hardware/face/FaceManager$FaceDetectionCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationCallback;,
        Landroid/hardware/face/FaceManager$AuthenticationResult;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_FACE:Z

.field private static final blacklist MSG_ACQUIRED:I = 0x65

.field private static final blacklist MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final blacklist MSG_AUTHENTICATION_FRAME:I = 0x70

.field private static final blacklist MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final blacklist MSG_CHALLENGE_GENERATED:I = 0x6c

.field private static final blacklist MSG_ENROLLMENT_FRAME:I = 0x71

.field private static final blacklist MSG_ENROLL_RESULT:I = 0x64

.field private static final blacklist MSG_ERROR:I = 0x68

.field private static final blacklist MSG_FACE_DETECTED:I = 0x6d

.field private static final blacklist MSG_GET_FEATURE_COMPLETED:I = 0x6a

.field private static final blacklist MSG_REMOVED:I = 0x69

.field private static final blacklist MSG_SET_FEATURE_COMPLETED:I = 0x6b

.field private static final blacklist TAG:Ljava/lang/String; = "FaceManager"


# instance fields
.field private blacklist mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private blacklist mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private blacklist mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field private blacklist mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

.field private blacklist mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private blacklist mRemovalFace:Landroid/hardware/face/Face;

.field private final blacklist mService:Landroid/hardware/face/IFaceService;

.field private final blacklist mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

.field private blacklist mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/hardware/face/FaceManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/face/FaceManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelAuthentication(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelAuthentication(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelEnrollment(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelEnrollment(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelFaceDetect(Landroid/hardware/face/FaceManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->cancelFaceDetect(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAcquiredResult(Landroid/hardware/face/FaceManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendAcquiredResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedFailed(Landroid/hardware/face/FaceManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/face/FaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticatedSucceeded(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendAuthenticationFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendChallengeGenerated(Landroid/hardware/face/FaceManager;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager;->sendChallengeGenerated(IIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendEnrollResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendEnrollmentFrame(Landroid/hardware/face/FaceManager;Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorResult(Landroid/hardware/face/FaceManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendErrorResult(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendFaceDetected(Landroid/hardware/face/FaceManager;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendFaceDetected(IIZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendGetFeatureCompleted(Landroid/hardware/face/FaceManager;Z[I[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/face/FaceManager;->sendGetFeatureCompleted(Z[I[Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendRemovedResult(Landroid/hardware/face/FaceManager;Landroid/hardware/face/Face;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendRemovedResult(Landroid/hardware/face/Face;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendSetFeatureCompleted(Landroid/hardware/face/FaceManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/face/FaceManager;->sendSetFeatureCompleted(ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_FACE()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 95
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/face/IFaceService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/face/IFaceService;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    .line 98
    new-instance v0, Landroid/hardware/face/FaceManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/face/FaceManager$1;-><init>(Landroid/hardware/face/FaceManager;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    .line 207
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 208
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    .line 209
    if-nez p2, :cond_0

    .line 210
    const-string v0, "FaceManager"

    const-string v1, "FaceAuthenticationManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    new-instance v0, Landroid/hardware/face/FaceManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 213
    return-void
.end method

.method private blacklist cancelAuthentication(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 801
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 805
    :try_start_0
    const-string v0, "FaceManager"

    const-string v1, "FaceManager#cancelAuthentication"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 812
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelEnrollment(J)V
    .locals 2
    .param p1, "requestId"    # J

    .line 787
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 791
    :try_start_0
    const-string v0, "FaceManager"

    const-string v1, "FaceManager#cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Landroid/hardware/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 798
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist cancelFaceDetect(J)V
    .locals 3
    .param p1, "requestId"    # J

    .line 815
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 816
    return-void

    .line 820
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/face/IFaceService;->cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    nop

    .line 824
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1437
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1479
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1481
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v2, v1

    if-ge p2, v2, :cond_0

    .line 1482
    aget-object v0, v1, p2

    return-object v0

    .line 1475
    .end local v1    # "msgArray":[Ljava/lang/String;
    :pswitch_1
    const v0, 0x10403aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1473
    :pswitch_2
    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1471
    :pswitch_3
    const v0, 0x10403b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1469
    :pswitch_4
    const v0, 0x10403af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1467
    :pswitch_5
    const v0, 0x10403a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1465
    :pswitch_6
    const v0, 0x10403b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1455
    :pswitch_7
    const v0, 0x10403a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1463
    :pswitch_8
    const v0, 0x10403ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1461
    :pswitch_9
    const v0, 0x10403ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1459
    :pswitch_a
    const v0, 0x10403a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1441
    :pswitch_b
    return-object v0

    .line 1487
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown authentication acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1496
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1547
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "msgArray":[Ljava/lang/String;
    array-length v2, v1

    if-ge p2, v2, :cond_0

    .line 1550
    aget-object v0, v1, p2

    return-object v0

    .line 1545
    .end local v1    # "msgArray":[Ljava/lang/String;
    :pswitch_2
    const v0, 0x10403aa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1543
    :pswitch_3
    const v0, 0x10403a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1539
    :pswitch_4
    const v0, 0x10403a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1537
    :pswitch_5
    const v0, 0x10403ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1535
    :pswitch_6
    const v0, 0x10403a6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1533
    :pswitch_7
    const v0, 0x10403b6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1531
    :pswitch_8
    const v0, 0x10403af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1529
    :pswitch_9
    const v0, 0x10403a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1527
    :pswitch_a
    const v0, 0x10403b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1525
    :pswitch_b
    const v0, 0x10403a4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1523
    :pswitch_c
    const v0, 0x10403a7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1521
    :pswitch_d
    const v0, 0x10403b5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1518
    :pswitch_e
    const v0, 0x10403b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1515
    :pswitch_f
    const v0, 0x10403b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1512
    :pswitch_10
    const v0, 0x10403b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1509
    :pswitch_11
    const v0, 0x10403b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1507
    :pswitch_12
    const v0, 0x10403ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1505
    :pswitch_13
    const v0, 0x10403ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1503
    :pswitch_14
    const v0, 0x10403ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1501
    :pswitch_15
    const v0, 0x10403a3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1499
    :pswitch_16
    return-object v0

    .line 1554
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enrollment acquired message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_16
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static blacklist getErrorString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errMsg"    # I
    .param p2, "vendorCode"    # I

    .line 830
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 858
    :pswitch_1
    const v0, 0x10403cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 855
    :pswitch_2
    const v0, 0x10403c3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :pswitch_3
    const v0, 0x10403bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 851
    :pswitch_4
    const v0, 0x10403c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 849
    :pswitch_5
    const v0, 0x10403c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 846
    :pswitch_6
    const v0, 0x10403bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 861
    :pswitch_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 864
    aget-object v1, v0, p2

    return-object v1

    .line 844
    .end local v0    # "msgArray":[Ljava/lang/String;
    :pswitch_8
    const v0, 0x10403be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :pswitch_9
    const v0, 0x10403bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 840
    :pswitch_a
    const v0, 0x10403c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 838
    :pswitch_b
    const v0, 0x10403c4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 835
    :pswitch_c
    const v0, 0x10403c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 832
    :pswitch_d
    const v0, 0x10403bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 868
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const v0, 0x10403c7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static blacklist getHelpCode(II)I
    .locals 1
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 1427
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    .line 1428
    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    .line 1429
    :cond_0
    move v0, p0

    .line 1427
    :goto_0
    return v0
.end method

.method public static blacklist getMappedAcquiredInfo(II)I
    .locals 2
    .param p0, "acquireInfo"    # I
    .param p1, "vendorCode"    # I

    .line 878
    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    .line 900
    :pswitch_0
    return v1

    .line 898
    :pswitch_1
    add-int/lit16 v0, p1, 0x3e8

    return v0

    .line 896
    :pswitch_2
    return v0

    .line 891
    :pswitch_3
    const/4 v0, 0x1

    return v0

    .line 884
    :pswitch_4
    return v0

    .line 880
    :pswitch_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist sendAcquiredResult(II)V
    .locals 4
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 1373
    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAcquiredResult and acquireInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 1376
    new-instance v0, Landroid/hardware/face/FaceAuthenticationFrame;

    new-instance v1, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v1, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceAuthenticationFrame;-><init>(Landroid/hardware/face/FaceDataFrame;)V

    .line 1378
    .local v0, "frame":Landroid/hardware/face/FaceAuthenticationFrame;
    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V

    .end local v0    # "frame":Landroid/hardware/face/FaceAuthenticationFrame;
    goto :goto_0

    .line 1379
    :cond_1
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_2

    .line 1380
    new-instance v0, Landroid/hardware/face/FaceEnrollFrame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Landroid/hardware/face/FaceDataFrame;

    invoke-direct {v3, p1, p2}, Landroid/hardware/face/FaceDataFrame;-><init>(II)V

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/face/FaceEnrollFrame;-><init>(Landroid/hardware/face/FaceEnrollCell;ILandroid/hardware/face/FaceDataFrame;)V

    .line 1384
    .local v0, "frame":Landroid/hardware/face/FaceEnrollFrame;
    invoke-direct {p0, v0}, Landroid/hardware/face/FaceManager;->sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V

    goto :goto_1

    .line 1379
    .end local v0    # "frame":Landroid/hardware/face/FaceEnrollFrame;
    :cond_2
    :goto_0
    nop

    .line 1386
    :goto_1
    return-void
.end method

.method private blacklist sendAuthenticatedFailed()V
    .locals 2

    .line 1361
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 1364
    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendAuthenticatedFailed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    .line 1368
    :cond_1
    return-void
.end method

.method private blacklist sendAuthenticatedSucceeded(Landroid/hardware/face/Face;IZ)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1349
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 1352
    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendAuthenticatedSucceeded!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    new-instance v0, Landroid/hardware/face/FaceManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/face/FaceManager$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/face/Face;IZ)V

    .line 1356
    .local v0, "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/face/FaceManager$AuthenticationResult;)V

    .line 1358
    .end local v0    # "result":Landroid/hardware/face/FaceManager$AuthenticationResult;
    :cond_1
    return-void
.end method

.method private blacklist sendAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .locals 5
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 1389
    if-nez p1, :cond_0

    .line 1390
    const-string v0, "FaceManager"

    const-string v1, "Received null authentication frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1391
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v0

    .line 1394
    .local v0, "acquireInfo":I
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticationFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v1

    .line 1395
    .local v1, "vendorCode":I
    invoke-static {v0, v1}, Landroid/hardware/face/FaceManager;->getHelpCode(II)I

    move-result v2

    .line 1396
    .local v2, "helpCode":I
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/hardware/face/FaceManager;->getAuthHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1397
    .local v3, "helpMessage":Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v4, v0}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    .line 1400
    if-eqz v3, :cond_1

    .line 1401
    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    invoke-virtual {v4, v2, v3}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 1404
    .end local v0    # "acquireInfo":I
    .end local v1    # "vendorCode":I
    .end local v2    # "helpCode":I
    .end local v3    # "helpMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendChallengeGenerated(IIJ)V
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 1297
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    if-nez v0, :cond_0

    .line 1298
    return-void

    .line 1300
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/face/FaceManager$GenerateChallengeCallback;->onGenerateChallengeResult(IIJ)V

    .line 1301
    return-void
.end method

.method private blacklist sendEnrollResult(Landroid/hardware/face/Face;I)V
    .locals 2
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1339
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 1342
    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendEnrollResult!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    invoke-virtual {v0, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    .line 1346
    :cond_1
    return-void
.end method

.method private blacklist sendEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .locals 13
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 1407
    if-nez p1, :cond_0

    .line 1408
    const-string v0, "FaceManager"

    const-string v1, "Received null enrollment frame"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1409
    :cond_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v0, :cond_1

    .line 1410
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getData()Landroid/hardware/face/FaceDataFrame;

    move-result-object v0

    .line 1411
    .local v0, "data":Landroid/hardware/face/FaceDataFrame;
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getAcquiredInfo()I

    move-result v1

    .line 1412
    .local v1, "acquireInfo":I
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getVendorCode()I

    move-result v2

    .line 1413
    .local v2, "vendorCode":I
    invoke-static {v1, v2}, Landroid/hardware/face/FaceManager;->getHelpCode(II)I

    move-result v11

    .line 1414
    .local v11, "helpCode":I
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Landroid/hardware/face/FaceManager;->getEnrollHelpMessage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v12

    .line 1415
    .local v12, "helpMessage":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 1418
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getCell()Landroid/hardware/face/FaceEnrollCell;

    move-result-object v6

    .line 1419
    invoke-virtual {p1}, Landroid/hardware/face/FaceEnrollFrame;->getStage()I

    move-result v7

    .line 1420
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getPan()F

    move-result v8

    .line 1421
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getTilt()F

    move-result v9

    .line 1422
    invoke-virtual {v0}, Landroid/hardware/face/FaceDataFrame;->getDistance()F

    move-result v10

    .line 1415
    move v4, v11

    move-object v5, v12

    invoke-virtual/range {v3 .. v10}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V

    .line 1424
    .end local v0    # "data":Landroid/hardware/face/FaceDataFrame;
    .end local v1    # "acquireInfo":I
    .end local v2    # "vendorCode":I
    .end local v11    # "helpCode":I
    .end local v12    # "helpMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist sendErrorResult(II)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "vendorCode"    # I

    .line 1321
    sget-boolean v0, Landroid/hardware/face/FaceManager;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendErrorResult and errMsgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1325
    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1326
    .local v0, "clientErrMsgId":I
    :goto_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    if-eqz v1, :cond_2

    .line 1327
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1328
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1329
    :cond_2
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    if-eqz v1, :cond_3

    .line 1330
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1331
    invoke-static {v2, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-virtual {v1, v0, v2}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 1332
    :cond_3
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-eqz v1, :cond_4

    .line 1333
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 1334
    invoke-static {v3, p1, p2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    .line 1333
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V

    .line 1336
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist sendFaceDetected(IIZ)V
    .locals 2
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 1304
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "FaceManager"

    const-string/jumbo v1, "sendFaceDetected, callback null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1308
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$FaceDetectionCallback;->onFaceDetected(IIZ)V

    .line 1309
    return-void
.end method

.method private blacklist sendGetFeatureCompleted(Z[I[Z)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 1290
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    if-nez v0, :cond_0

    .line 1291
    return-void

    .line 1293
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/face/FaceManager$GetFeatureCallback;->onCompleted(Z[I[Z)V

    .line 1294
    return-void
.end method

.method private blacklist sendRemovedResult(Landroid/hardware/face/Face;I)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1312
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    if-nez v0, :cond_0

    .line 1313
    return-void

    .line 1315
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/face/Face;I)V

    .line 1316
    return-void
.end method

.method private blacklist sendSetFeatureCompleted(ZI)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 1283
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    if-nez v0, :cond_0

    .line 1284
    return-void

    .line 1286
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/hardware/face/FaceManager$SetFeatureCallback;->onCompleted(ZI)V

    .line 1287
    return-void
.end method

.method private blacklist useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 219
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 220
    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 222
    new-instance v1, Landroid/hardware/face/FaceManager$MyHandler;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/face/FaceManager$MyHandler;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/Looper;Landroid/hardware/face/FaceManager$MyHandler-IA;)V

    iput-object v1, p0, Landroid/hardware/face/FaceManager;->mHandler:Landroid/os/Handler;

    .line 224
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 752
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 755
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    new-instance v2, Landroid/hardware/face/FaceManager$2;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/face/FaceManager$2;-><init>(Landroid/hardware/face/FaceManager;Landroid/os/PowerManager;Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 777
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 755
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 782
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v0, "FaceManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void
.end method

.method public blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V
    .locals 17
    .param p1, "crypto"    # Landroid/hardware/biometrics/CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "isKeyguardBypassEnabled"    # Z

    .line 250
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "FaceManager#authenticate"

    if-eqz v4, :cond_4

    .line 254
    const-string v5, "FaceManager"

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    const-string v0, "authentication already canceled"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 259
    :cond_0
    iget-object v6, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v6, :cond_3

    .line 261
    move-object/from16 v6, p4

    :try_start_0
    invoke-direct {v1, v6}, Landroid/hardware/face/FaceManager;->useHandler(Landroid/os/Handler;)V

    .line 262
    iput-object v4, v1, Landroid/hardware/face/FaceManager;->mAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 263
    iput-object v2, v1, Landroid/hardware/face/FaceManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    .line 264
    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    move-wide v11, v7

    .line 265
    .local v11, "operationId":J
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 268
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v9, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v14, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    .line 270
    move/from16 v13, p5

    move/from16 v16, p6

    invoke-interface/range {v9 .. v16}, Landroid/hardware/face/IFaceService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J

    move-result-wide v7

    .line 272
    .local v7, "authId":J
    if-eqz v3, :cond_2

    .line 273
    new-instance v0, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v7, v8}, Landroid/hardware/face/FaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 283
    .end local v7    # "authId":J
    .end local v11    # "operationId":J
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v7, "Remote exception while authenticating: "

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 280
    const/4 v8, 0x1

    invoke-static {v5, v8, v7}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v4, v8, v5}, Landroid/hardware/face/FaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 284
    goto :goto_3

    .line 283
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 284
    throw v0

    .line 259
    :cond_3
    move-object/from16 v6, p4

    .line 286
    :goto_3
    return-void

    .line 251
    :cond_4
    move-object/from16 v6, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must supply an authentication callback"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V
    .locals 5
    .param p1, "cancel"    # Landroid/os/CancellationSignal;
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$FaceDetectionCallback;
    .param p3, "userId"    # I

    .line 296
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    const-string v1, "FaceManager"

    if-eqz v0, :cond_1

    .line 301
    const-string v0, "Detection already cancelled"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void

    .line 305
    :cond_1
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 308
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 309
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 308
    invoke-interface {v0, v2, p3, v3, v4}, Landroid/hardware/face/IFaceService;->detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J

    move-result-wide v2

    .line 310
    .local v2, "authId":J
    new-instance v0, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;

    invoke-direct {v0, p0, v2, v3}, Landroid/hardware/face/FaceManager$OnFaceDetectionCancelListener;-><init>(Landroid/hardware/face/FaceManager;J)V

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v2    # "authId":J
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception when requesting finger detect"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 326
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V

    .line 328
    return-void
.end method

.method public blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V
    .locals 15
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I
    .param p6, "previewSurface"    # Landroid/view/Surface;
    .param p7, "debugConsent"    # Z

    .line 353
    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v0, "FaceManager#enroll"

    if-eqz v3, :cond_3

    .line 357
    const-string v4, "FaceManager"

    if-eqz v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    const-string v0, "enrollment already canceled"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void

    .line 362
    :cond_0
    iget-object v5, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v5, :cond_2

    .line 364
    :try_start_0
    iput-object v3, v1, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 365
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 368
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v6, v1, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v8, v1, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v10, v1, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 370
    move/from16 v7, p1

    move-object/from16 v9, p2

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v6 .. v14}, Landroid/hardware/face/IFaceService;->enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J

    move-result-wide v5

    .line 373
    .local v5, "enrollId":J
    if-eqz v2, :cond_1

    .line 374
    new-instance v0, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v5, v6, v7}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {v2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 384
    .end local v5    # "enrollId":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "Remote exception in enroll: "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    iget-object v4, v1, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    .line 381
    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    .line 380
    invoke-virtual {v3, v6, v4}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 385
    goto :goto_2

    .line 384
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 385
    throw v0

    .line 387
    :cond_2
    :goto_2
    return-void

    .line 354
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must supply an enrollment callback"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist enrollRemotely(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "hardwareAuthToken"    # [B
    .param p3, "cancel"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/hardware/face/FaceManager$EnrollmentCallback;
    .param p5, "disabledFeatures"    # [I

    .line 409
    if-eqz p4, :cond_3

    .line 413
    const-string v0, "FaceManager"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "enrollRemotely is already canceled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_2

    .line 420
    :try_start_0
    iput-object p4, p0, Landroid/hardware/face/FaceManager;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 421
    const-string v1, "FaceManager#enrollRemotely"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 423
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 422
    move v3, p1

    move-object v5, p2

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J

    move-result-wide v1

    .line 424
    .local v1, "enrolId":J
    if-eqz p3, :cond_1

    .line 425
    new-instance v3, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v2, v4}, Landroid/hardware/face/FaceManager$OnEnrollCancelListener;-><init>(Landroid/hardware/face/FaceManager;JLandroid/hardware/face/FaceManager$OnEnrollCancelListener-IA;)V

    invoke-virtual {p3, v3}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 435
    .end local v1    # "enrolId":J
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "Remote exception in enrollRemotely: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 432
    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p4, v3, v0}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 436
    goto :goto_2

    .line 435
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 436
    throw v0

    .line 438
    :cond_2
    :goto_2
    return-void

    .line 410
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 454
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 456
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGenerateChallengeCallback:Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 457
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 457
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 463
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$GenerateChallengeCallback;

    .line 473
    nop

    .line 474
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 475
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void

    .line 480
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v1, v1, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    .line 481
    .local v1, "sensorId":I
    invoke-virtual {p0, v1, p1, p2}, Landroid/hardware/face/FaceManager;->generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 482
    return-void
.end method

.method public blacklist getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 605
    nop

    .line 606
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 607
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const-string v1, "FaceManager"

    const-string v2, "No sensors"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 612
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 614
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 615
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 616
    :catch_0
    move-exception v1

    .line 617
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 620
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 543
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mGetFeatureCallback:Landroid/hardware/face/FaceManager$GetFeatureCallback;

    .line 546
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 546
    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 552
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I

    .line 737
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 739
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/face/IFaceService;->getLockoutModeForUser(II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSensorProperties()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorProperties;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v0, "properties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorProperties;>;"
    nop

    .line 706
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    .line 707
    .local v1, "internalProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;

    .line 708
    .local v3, "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-static {v3}, Landroid/hardware/face/FaceSensorProperties;->from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v3    # "internalProp":Landroid/hardware/face/FaceSensorPropertiesInternal;
    goto :goto_0

    .line 710
    :cond_0
    return-object v0
.end method

.method public blacklist getSensorPropertiesInternal()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .line 721
    :try_start_0
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 724
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/face/IFaceService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 728
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist hasEnrolledTemplates()Z
    .locals 1

    .line 642
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnrolledTemplates(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 652
    nop

    .line 653
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 655
    const-string v1, "FaceManager"

    const-string v3, "No sensors"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v2

    .line 659
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 661
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 662
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-interface {v1, v2, p1, v3}, Landroid/hardware/face/IFaceService;->hasEnrolledFaces(IILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 667
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    return v2
.end method

.method public blacklist isHardwareDetected()Z
    .locals 4

    .line 678
    nop

    .line 679
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 680
    .local v0, "faceSensorProperties":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "FaceManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 681
    const-string v1, "No sensors"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return v3

    .line 685
    :cond_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v1, :cond_1

    .line 687
    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v2, v2, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 688
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 687
    invoke-interface {v1, v2, v3}, Landroid/hardware/face/IFaceService;->isHardwareDetected(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 693
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "isFaceHardwareDetected(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return v3
.end method

.method public blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .locals 8
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 565
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 567
    :try_start_0
    iput-object p3, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 568
    iput-object p1, p0, Landroid/hardware/face/FaceManager;->mRemovalFace:Landroid/hardware/face/Face;

    .line 571
    const-string v0, "FaceManager"

    const-string v1, "FaceManager#remove"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v4

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 574
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 573
    move v5, p2

    invoke-interface/range {v2 .. v7}, Landroid/hardware/face/IFaceService;->remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 579
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 587
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 589
    :try_start_0
    iput-object p2, p0, Landroid/hardware/face/FaceManager;->mRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    .line 590
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v3, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/hardware/face/IFaceService;->removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 595
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist resetLockout(II[B)V
    .locals 6
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "hardwareAuthToken"    # [B

    .line 511
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 514
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 513
    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/face/IFaceService;->resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 519
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist revokeChallenge(IIJ)V
    .locals 7
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 491
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 494
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 493
    move v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/hardware/face/IFaceService;->revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    goto :goto_0

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "feature"    # I
    .param p3, "enabled"    # Z
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "callback"    # Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 527
    iget-object v0, p0, Landroid/hardware/face/FaceManager;->mService:Landroid/hardware/face/IFaceService;

    if-eqz v0, :cond_0

    .line 529
    :try_start_0
    iput-object p5, p0, Landroid/hardware/face/FaceManager;->mSetFeatureCallback:Landroid/hardware/face/FaceManager$SetFeatureCallback;

    .line 530
    iget-object v1, p0, Landroid/hardware/face/FaceManager;->mToken:Landroid/os/IBinder;

    iget-object v6, p0, Landroid/hardware/face/FaceManager;->mServiceReceiver:Landroid/hardware/face/IFaceServiceReceiver;

    iget-object v2, p0, Landroid/hardware/face/FaceManager;->mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 530
    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/face/IFaceService;->setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 536
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
