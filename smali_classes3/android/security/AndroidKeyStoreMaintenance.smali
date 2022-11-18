.class public Landroid/security/AndroidKeyStoreMaintenance;
.super Ljava/lang/Object;
.source "AndroidKeyStoreMaintenance.java"


# static fields
.field public static final blacklist INVALID_ARGUMENT:I = 0x14

.field public static final blacklist KEY_NOT_FOUND:I = 0x7

.field public static final blacklist PERMISSION_DENIED:I = 0x6

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreMaintenance"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearNamespace(IJ)I
    .locals 3
    .param p0, "domain"    # I
    .param p1, "namespace"    # J

    .line 114
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/security/maintenance/IKeystoreMaintenance;->clearNamespace(IJ)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    const/4 v0, 0x4

    return v0

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "clearNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method private static blacklist getService()Landroid/security/maintenance/IKeystoreMaintenance;
    .locals 1

    .line 42
    nop

    .line 43
    const-string v0, "android.security.maintenance"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/security/maintenance/IKeystoreMaintenance$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getState(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 133
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->getState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    const/4 v0, 0x4

    return v0

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string v2, "getState failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)I
    .locals 3
    .param p0, "source"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "destination"    # Landroid/system/keystore2/KeyDescriptor;

    .line 176
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->migrateKeyNamespace(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v0, 0x0

    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/4 v0, 0x4

    return v0

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 179
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "migrateKeyNamespace failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onDeviceOffBody()V
    .locals 3

    .line 148
    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v0

    invoke-interface {v0}, Landroid/security/maintenance/IKeystoreMaintenance;->onDeviceOffBody()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AndroidKeyStoreMaintenance"

    const-string v2, "Error while reporting device off body event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static blacklist onUserAdded(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 55
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserAdded(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v0, 0x4

    return v0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserAdded failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserPasswordChanged(I[B)I
    .locals 3
    .param p0, "userId"    # I
    .param p1, "password"    # [B

    .line 97
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserPasswordChanged(I[B)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v0, 0x4

    return v0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserPasswordChanged failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method

.method public static blacklist onUserRemoved(I)I
    .locals 3
    .param p0, "userId"    # I

    .line 75
    const-string v0, "AndroidKeyStoreMaintenance"

    :try_start_0
    invoke-static {}, Landroid/security/AndroidKeyStoreMaintenance;->getService()Landroid/security/maintenance/IKeystoreMaintenance;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/security/maintenance/IKeystoreMaintenance;->onUserRemoved(I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Can not connect to keystore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v0, 0x4

    return v0

    .line 77
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Landroid/os/ServiceSpecificException;
    const-string/jumbo v2, "onUserRemoved failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    iget v0, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    return v0
.end method
