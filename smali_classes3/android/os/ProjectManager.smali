.class public Landroid/os/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field public static final blacklist PMIC_ID_MAX:I = 0x7

.field public static final blacklist PMIC_ID_MIN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ProjectManager"

.field public static final blacklist THEIA_NODE_ID_BLACK_SWITCH:I = 0x3

.field public static final blacklist THEIA_NODE_ID_BRIGHT_SWITCH:I = 0x4

.field public static final blacklist THEIA_NODE_ID_MONITOR_PARAM:I = 0x1

.field public static final blacklist THEIA_NODE_ID_POWERKEY_REPORT:I = 0x2

.field private static blacklist sProjectService:Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/os/ProjectManager;->sProjectService:Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getEngVersion()I
    .locals 3

    .line 129
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 130
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_eng_version()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 135
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_eng_version() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getFtmMode()I
    .locals 3

    .line 177
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 178
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_ftmmode()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 183
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_ftmmode()() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getHungtask()Ljava/lang/String;
    .locals 3

    .line 242
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 243
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_hungtask()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "no_task"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_hungtask()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 248
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_hungtask() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getOcpReason()Ljava/lang/String;
    .locals 3

    .line 165
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 166
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_ocp()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 171
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_ocp() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getOperatorName()I
    .locals 3

    .line 105
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 106
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_operator_name()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 111
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_operator_name() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getPcbVersion()I
    .locals 3

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 82
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_pcb_version()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 87
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_pcb_version() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getPmicStatus()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    const-string v0, "NULL"

    const-string v1, "ProjectManager"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v2, "mPmicStatusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v3

    .line 256
    .local v3, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v3, :cond_4

    .line 257
    const/4 v4, 0x0

    .line 258
    .local v4, "pmicid":I
    :goto_0
    if-ltz v4, :cond_3

    const/4 v5, 0x7

    if-gt v4, v5, :cond_3

    .line 259
    invoke-interface {v3, v4}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_opluspoff_reason(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "mPoffStr":Ljava/lang/String;
    invoke-interface {v3, v4}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_opluspon_reason(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "mPonStr":Ljava/lang/String;
    invoke-interface {v3, v4}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_oplusocp_status(I)Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "mOcpStr":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, " "

    const/4 v11, 0x2

    const-string v12, "PMIC"

    const-string v13, "\\|"

    const/4 v14, 0x1

    if-nez v8, :cond_0

    .line 265
    :try_start_1
    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "mPMICPoffReason":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v9, v8, v14

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 267
    .local v9, "mPMICId":Ljava/lang/String;
    aget-object v15, v8, v11

    .line 268
    .local v15, "mPMICL1Poffcode":Ljava/lang/String;
    const/16 v16, 0x3

    aget-object v17, v8, v16

    move-object/from16 v18, v17

    .line 269
    .local v18, "mPMICL2Poffcode":Ljava/lang/String;
    const/16 v17, 0x4

    aget-object v17, v8, v17

    move-object/from16 v19, v17

    .line 271
    .local v19, "mPMICPoffStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_L1_poffcode"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_L2_poffcode"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v14, v18

    .end local v18    # "mPMICL2Poffcode":Ljava/lang/String;
    .local v14, "mPMICL2Poffcode":Ljava/lang/String;
    invoke-interface {v2, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v18, v3

    .end local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .local v18, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    const-string v3, "_poff"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v11, v19

    .end local v19    # "mPMICPoffStr":Ljava/lang/String;
    .local v11, "mPMICPoffStr":Ljava/lang/String;
    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v19, v5

    .end local v5    # "mPoffStr":Ljava/lang/String;
    .local v19, "mPoffStr":Ljava/lang/String;
    const-string v5, "_L1_poffcode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_L2_poffcode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_poff="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 263
    .end local v8    # "mPMICPoffReason":[Ljava/lang/String;
    .end local v9    # "mPMICId":Ljava/lang/String;
    .end local v11    # "mPMICPoffStr":Ljava/lang/String;
    .end local v14    # "mPMICL2Poffcode":Ljava/lang/String;
    .end local v15    # "mPMICL1Poffcode":Ljava/lang/String;
    .end local v18    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .end local v19    # "mPoffStr":Ljava/lang/String;
    .restart local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .restart local v5    # "mPoffStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    .line 277
    .end local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .end local v5    # "mPoffStr":Ljava/lang/String;
    .restart local v18    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .restart local v19    # "mPoffStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 279
    invoke-virtual {v6, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "mPMICPonReason":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v9, v3, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "mPMICId":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v9, v3, v8

    move-object v8, v9

    .line 282
    .local v8, "mPMICPoncode":Ljava/lang/String;
    const/4 v9, 0x3

    aget-object v9, v3, v9

    .line 284
    .local v9, "mPMICPonStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_poncode"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_pon"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "_poncode="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_pon="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v3    # "mPMICPonReason":[Ljava/lang/String;
    .end local v5    # "mPMICId":Ljava/lang/String;
    .end local v8    # "mPMICPoncode":Ljava/lang/String;
    .end local v9    # "mPMICPonStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 292
    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "mPMICOcpStatus":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 294
    .restart local v5    # "mPMICId":Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v3, v8

    .line 296
    .local v8, "mOcpStatus":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_ocp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_ocp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    .end local v3    # "mPMICOcpStatus":[Ljava/lang/String;
    .end local v5    # "mPMICId":Ljava/lang/String;
    .end local v8    # "mOcpStatus":Ljava/lang/String;
    :cond_2
    nop

    .end local v6    # "mPonStr":Ljava/lang/String;
    .end local v7    # "mOcpStr":Ljava/lang/String;
    .end local v19    # "mPoffStr":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 301
    move-object/from16 v3, v18

    goto/16 :goto_0

    .line 258
    .end local v18    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .local v3, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_3
    move-object/from16 v18, v3

    .end local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .restart local v18    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    goto :goto_2

    .line 256
    .end local v4    # "pmicid":I
    .end local v18    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .restart local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_4
    move-object/from16 v18, v3

    .line 305
    .end local v3    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :goto_2
    goto :goto_3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "get pmic status() failed."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-object v2
.end method

.method public static blacklist getPmicStatusforMTK()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v0, "pmicStatusMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v1

    .line 313
    .local v1, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v1, :cond_6

    .line 314
    invoke-interface {v1}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_pmic_info()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "pmicMonitorStr":Ljava/lang/String;
    const-string v3, "\\r?\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "spiltPmicMonitor":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_6

    .line 317
    aget-object v5, v3, v4

    .line 318
    .local v5, "pmicMonitorLine":Ljava/lang/String;
    const-string/jumbo v6, "pon_reason"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "_"

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, "\\|"

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-ne v6, v12, :cond_4

    :try_start_1
    const-string/jumbo v6, "poff_reason"

    .line 319
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v12, :cond_4

    const-string/jumbo v6, "poff_reason2"

    .line 320
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v12, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    const-string/jumbo v6, "pg_sdn_sts0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v12, :cond_3

    const-string/jumbo v6, "pg_sdn_sts1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v12, :cond_1

    goto :goto_1

    .line 332
    :cond_1
    const-string/jumbo v6, "oc_sdn_sts0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v12, :cond_2

    const-string/jumbo v6, "oc_sdn_sts1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v12, :cond_5

    .line 333
    :cond_2
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 334
    .local v6, "mtkPmicMonitorInfo":[Ljava/lang/String;
    aget-object v9, v6, v9

    .line 335
    .local v9, "mtkPmicType":Ljava/lang/String;
    aget-object v10, v6, v11

    .line 336
    .local v10, "mtkPmicTypeTime":Ljava/lang/String;
    aget-object v8, v6, v8

    .line 337
    .local v8, "mtkPmicTypeValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 327
    .end local v6    # "mtkPmicMonitorInfo":[Ljava/lang/String;
    .end local v8    # "mtkPmicTypeValue":Ljava/lang/String;
    .end local v9    # "mtkPmicType":Ljava/lang/String;
    .end local v10    # "mtkPmicTypeTime":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 328
    .restart local v6    # "mtkPmicMonitorInfo":[Ljava/lang/String;
    aget-object v9, v6, v9

    .line 329
    .restart local v9    # "mtkPmicType":Ljava/lang/String;
    aget-object v10, v6, v11

    .line 330
    .restart local v10    # "mtkPmicTypeTime":Ljava/lang/String;
    aget-object v8, v6, v8

    .line 331
    .restart local v8    # "mtkPmicTypeValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    nop

    .end local v6    # "mtkPmicMonitorInfo":[Ljava/lang/String;
    .end local v8    # "mtkPmicTypeValue":Ljava/lang/String;
    .end local v9    # "mtkPmicType":Ljava/lang/String;
    .end local v10    # "mtkPmicTypeTime":Ljava/lang/String;
    goto :goto_3

    .line 321
    :cond_4
    :goto_2
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 322
    .restart local v6    # "mtkPmicMonitorInfo":[Ljava/lang/String;
    aget-object v9, v6, v9

    .line 323
    .restart local v9    # "mtkPmicType":Ljava/lang/String;
    aget-object v10, v6, v11

    .line 324
    .restart local v10    # "mtkPmicTypeTime":Ljava/lang/String;
    aget-object v8, v6, v8

    .line 325
    .restart local v8    # "mtkPmicTypeValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 326
    nop

    .line 316
    .end local v5    # "pmicMonitorLine":Ljava/lang/String;
    .end local v6    # "mtkPmicMonitorInfo":[Ljava/lang/String;
    .end local v8    # "mtkPmicTypeValue":Ljava/lang/String;
    .end local v9    # "mtkPmicType":Ljava/lang/String;
    .end local v10    # "mtkPmicTypeTime":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 343
    .end local v1    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .end local v2    # "pmicMonitorStr":Ljava/lang/String;
    .end local v3    # "spiltPmicMonitor":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6
    goto :goto_4

    .line 341
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ProjectManager"

    const-string v3, "get pmic status() failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4
    return-object v0
.end method

.method public static blacklist getPoffReason()Ljava/lang/String;
    .locals 3

    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 142
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_poff_reason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 147
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_poff_reason() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getPonReason()Ljava/lang/String;
    .locals 3

    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 154
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_pon_reason()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 159
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_pon_reason() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getProject()I
    .locals 3

    .line 69
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 70
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_project()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 75
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_project() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    .locals 3

    .line 51
    const-string v0, "ProjectManager"

    sget-object v1, Landroid/os/ProjectManager;->sProjectService:Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    invoke-static {}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->getService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v1

    sput-object v1, Landroid/os/ProjectManager;->sProjectService:Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetProject() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/ProjectManager;->getProject()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GetPcbVersion() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-static {}, Landroid/os/ProjectManager;->getPcbVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GetSerialID() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-static {}, Landroid/os/ProjectManager;->getSerialID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GetOperatorName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 57
    invoke-static {}, Landroid/os/ProjectManager;->getOperatorName()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GetRFType() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-static {}, Landroid/os/ProjectManager;->getRFType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GetEngVersion() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-static {}, Landroid/os/ProjectManager;->getEngVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to get oplus project hal service"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/ProjectManager;->sProjectService:Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    return-object v0
.end method

.method public static blacklist getRFType()I
    .locals 3

    .line 117
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 118
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_rf_type()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 123
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_rf_type() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getSerialID()Ljava/lang/String;
    .locals 3

    .line 93
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 94
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->get_serial_ID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "get_serial_ID() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist readTheiaNode(I)Ljava/lang/String;
    .locals 3
    .param p0, "theiaNodeId"    # I

    .line 189
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 190
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->read_theia_node(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 195
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "read_theia_proc() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist setOpBoot(Ljava/lang/String;)Z
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 230
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 231
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->set_opboot(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 236
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "set_opboot() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist setShutdownDetect(Ljava/lang/String;)Z
    .locals 3
    .param p0, "data"    # Ljava/lang/String;

    .line 218
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v0

    .line 219
    .local v0, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->set_shutdown_detect(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 224
    .end local v0    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProjectManager"

    const-string/jumbo v2, "setShutdownDetect() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist writeTheiaNode(ILjava/lang/String;)Z
    .locals 4
    .param p0, "theiaNodeId"    # I
    .param p1, "data"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .line 204
    .local v0, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/ProjectManager;->getProjectService()Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;

    move-result-object v1

    .line 205
    .local v1, "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    if-eqz v1, :cond_0

    .line 206
    invoke-interface {v1, p0, p1}, Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;->write_theia_node(ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 210
    .end local v1    # "service":Lvendor/oplus/hardware/stability/oplus_project/V1_0/IOplusProject;
    :cond_0
    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ProjectManager"

    const-string/jumbo v3, "read_theia_proc() failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method
