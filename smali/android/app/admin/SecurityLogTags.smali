.class public Landroid/app/admin/SecurityLogTags;
.super Ljava/lang/Object;
.source "SecurityLogTags.java"


# static fields
.field public static final greylist-max-o SECURITY_ADB_SHELL_COMMAND:I = 0x33452

.field public static final greylist-max-o SECURITY_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final greylist-max-o SECURITY_ADB_SYNC_RECV:I = 0x33453

.field public static final greylist-max-o SECURITY_ADB_SYNC_SEND:I = 0x33454

.field public static final greylist-max-o SECURITY_APP_PROCESS_START:I = 0x33455

.field public static final blacklist SECURITY_BLUETOOTH_CONNECTION:I = 0x33477

.field public static final blacklist SECURITY_BLUETOOTH_DISCONNECTION:I = 0x33478

.field public static final blacklist SECURITY_CAMERA_POLICY_SET:I = 0x33472

.field public static final greylist-max-o SECURITY_CERT_AUTHORITY_INSTALLED:I = 0x3346d

.field public static final greylist-max-o SECURITY_CERT_AUTHORITY_REMOVED:I = 0x3346e

.field public static final greylist-max-o SECURITY_CERT_VALIDATION_FAILURE:I = 0x33471

.field public static final greylist-max-o SECURITY_CRYPTO_SELF_TEST_COMPLETED:I = 0x3346f

.field public static final greylist-max-o SECURITY_KEYGUARD_DISABLED_FEATURES_SET:I = 0x33465

.field public static final greylist-max-o SECURITY_KEYGUARD_DISMISSED:I = 0x33456

.field public static final greylist-max-o SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final greylist-max-o SECURITY_KEYGUARD_SECURED:I = 0x33458

.field public static final greylist-max-o SECURITY_KEY_DESTROYED:I = 0x3346a

.field public static final greylist-max-o SECURITY_KEY_GENERATED:I = 0x33468

.field public static final greylist-max-o SECURITY_KEY_IMPORTED:I = 0x33469

.field public static final greylist-max-o SECURITY_KEY_INTEGRITY_VIOLATION:I = 0x33470

.field public static final greylist-max-o SECURITY_LOGGING_STARTED:I = 0x3345b

.field public static final greylist-max-o SECURITY_LOGGING_STOPPED:I = 0x3345c

.field public static final greylist-max-o SECURITY_LOG_BUFFER_SIZE_CRITICAL:I = 0x3345f

.field public static final greylist-max-o SECURITY_MAX_PASSWORD_ATTEMPTS_SET:I = 0x33464

.field public static final greylist-max-o SECURITY_MAX_SCREEN_LOCK_TIMEOUT_SET:I = 0x33463

.field public static final greylist-max-o SECURITY_MEDIA_MOUNTED:I = 0x3345d

.field public static final greylist-max-o SECURITY_MEDIA_UNMOUNTED:I = 0x3345e

.field public static final greylist-max-o SECURITY_OS_SHUTDOWN:I = 0x3345a

.field public static final greylist-max-o SECURITY_OS_STARTUP:I = 0x33459

.field public static final blacklist SECURITY_PASSWORD_CHANGED:I = 0x33474

.field public static final blacklist SECURITY_PASSWORD_COMPLEXITY_REQUIRED:I = 0x33473

.field public static final greylist-max-o SECURITY_PASSWORD_COMPLEXITY_SET:I = 0x33461

.field public static final greylist-max-o SECURITY_PASSWORD_EXPIRATION_SET:I = 0x33460

.field public static final greylist-max-o SECURITY_PASSWORD_HISTORY_LENGTH_SET:I = 0x33462

.field public static final greylist-max-o SECURITY_REMOTE_LOCK:I = 0x33466

.field public static final greylist-max-o SECURITY_USER_RESTRICTION_ADDED:I = 0x3346b

.field public static final greylist-max-o SECURITY_USER_RESTRICTION_REMOVED:I = 0x3346c

.field public static final blacklist SECURITY_WIFI_CONNECTION:I = 0x33475

.field public static final blacklist SECURITY_WIFI_DISCONNECTION:I = 0x33476

.field public static final greylist-max-o SECURITY_WIPE_FAILED:I = 0x33467


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o writeSecurityAdbShellCommand(Ljava/lang/String;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 138
    const v0, 0x33452

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 139
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbShellInteractive()V
    .locals 2

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33451

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 135
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbSyncRecv(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 142
    const v0, 0x33453

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 143
    return-void
.end method

.method public static greylist-max-o writeSecurityAdbSyncSend(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 146
    const v0, 0x33454

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 147
    return-void
.end method

.method public static greylist-max-o writeSecurityAppProcessStart(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;
    .param p6, "sha256"    # Ljava/lang/String;

    .line 150
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const v1, 0x33455

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 151
    return-void
.end method

.method public static blacklist writeSecurityBluetoothConnection(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "success"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 286
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x33477

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 287
    return-void
.end method

.method public static blacklist writeSecurityBluetoothDisconnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x33478

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 291
    return-void
.end method

.method public static blacklist writeSecurityCameraPolicySet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "disabled"    # I

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33472

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 267
    return-void
.end method

.method public static blacklist writeSecurityCertAuthorityInstalled(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "targetUser"    # I

    .line 246
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3346d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 247
    return-void
.end method

.method public static blacklist writeSecurityCertAuthorityRemoved(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "targetUser"    # I

    .line 250
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3346e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 251
    return-void
.end method

.method public static greylist-max-o writeSecurityCertValidationFailure(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .line 262
    const v0, 0x33471

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 263
    return-void
.end method

.method public static greylist-max-o writeSecurityCryptoSelfTestCompleted(I)V
    .locals 1
    .param p0, "success"    # I

    .line 254
    const v0, 0x3346f

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 255
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyDestroyed(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 234
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x3346a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 235
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyGenerated(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33468

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 227
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyImported(ILjava/lang/String;I)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 230
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33469

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 231
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyIntegrityViolation(Ljava/lang/String;I)V
    .locals 3
    .param p0, "keyId"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33470

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 259
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDisabledFeaturesSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "features"    # I

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33465

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 215
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDismissAuthAttempt(II)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "methodStrength"    # I

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33457

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 159
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardDismissed()V
    .locals 2

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33456

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 155
    return-void
.end method

.method public static greylist-max-o writeSecurityKeyguardSecured()V
    .locals 2

    .line 162
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33458

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 163
    return-void
.end method

.method public static greylist-max-o writeSecurityLogBufferSizeCritical()V
    .locals 2

    .line 190
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 191
    return-void
.end method

.method public static greylist-max-o writeSecurityLoggingStarted()V
    .locals 2

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 175
    return-void
.end method

.method public static greylist-max-o writeSecurityLoggingStopped()V
    .locals 2

    .line 178
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 179
    return-void
.end method

.method public static greylist-max-o writeSecurityMaxPasswordAttemptsSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "numFailures"    # I

    .line 210
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33464

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 211
    return-void
.end method

.method public static greylist-max-o writeSecurityMaxScreenLockTimeoutSet(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "timeout"    # J

    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33463

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 207
    return-void
.end method

.method public static greylist-max-o writeSecurityMediaMounted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .line 182
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3345d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 183
    return-void
.end method

.method public static greylist-max-o writeSecurityMediaUnmounted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x3345e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 187
    return-void
.end method

.method public static greylist-max-o writeSecurityOsShutdown()V
    .locals 2

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x3345a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 171
    return-void
.end method

.method public static greylist-max-o writeSecurityOsStartup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "bootState"    # Ljava/lang/String;
    .param p1, "verityMode"    # Ljava/lang/String;

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x33459

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 167
    return-void
.end method

.method public static blacklist writeSecurityPasswordChanged(II)V
    .locals 3
    .param p0, "passwordComplexity"    # I
    .param p1, "targetUser"    # I

    .line 274
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33474

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 275
    return-void
.end method

.method public static blacklist writeSecurityPasswordComplexityRequired(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "complexity"    # I

    .line 270
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33473

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 271
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordComplexitySet(Ljava/lang/String;IIIIIIIIII)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "length"    # I
    .param p4, "quality"    # I
    .param p5, "numLetters"    # I
    .param p6, "numNonLetters"    # I
    .param p7, "numNumeric"    # I
    .param p8, "numUppercase"    # I
    .param p9, "numLowercase"    # I
    .param p10, "numSymbols"    # I

    .line 198
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x33461

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 199
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordExpirationSet(Ljava/lang/String;IIJ)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "timeout"    # J

    .line 194
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33460

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 195
    return-void
.end method

.method public static greylist-max-o writeSecurityPasswordHistoryLengthSet(Ljava/lang/String;III)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I
    .param p3, "length"    # I

    .line 202
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x33462

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 203
    return-void
.end method

.method public static greylist-max-o writeSecurityRemoteLock(Ljava/lang/String;II)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "targetUser"    # I

    .line 218
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x33466

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 219
    return-void
.end method

.method public static greylist-max-o writeSecurityUserRestrictionAdded(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 238
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x3346b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 239
    return-void
.end method

.method public static greylist-max-o writeSecurityUserRestrictionRemoved(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I
    .param p2, "restriction"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x3346c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 243
    return-void
.end method

.method public static blacklist writeSecurityWifiConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "bssid"    # Ljava/lang/String;
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const v1, 0x33475

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 279
    return-void
.end method

.method public static blacklist writeSecurityWifiDisconnection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "bssid"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x33476

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 283
    return-void
.end method

.method public static greylist-max-o writeSecurityWipeFailed(Ljava/lang/String;I)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "adminUser"    # I

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33467

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 223
    return-void
.end method
