.class public Landroid/os/OplusBaseEnvironment;
.super Ljava/lang/Object;
.source "OplusBaseEnvironment.java"


# static fields
.field private static blacklist DIR_MY_CARRIER_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_COMPANY_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_COUNTRY_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_ENGINEER_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_HEYTAP_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_OPERATOR_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_PRELOAD_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_PRODUCT_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_REGION_ROOT:Ljava/io/File; = null

.field private static blacklist DIR_MY_STOCK_ROOT:Ljava/io/File; = null

.field private static final blacklist DIR_OPLUS_RESERVE:Ljava/lang/String; = "/mnt/vendor/oplusreserve"

.field private static final blacklist ENV_MY_BIGBALL_ROOT:Ljava/lang/String; = "MY_BIGBALL_ROOT"

.field private static final blacklist ENV_MY_CARRIER_ROOT:Ljava/lang/String; = "MY_CARRIER_ROOT"

.field private static final blacklist ENV_MY_COMPANY_ROOT:Ljava/lang/String; = "MY_COMPANY_ROOT"

.field private static final blacklist ENV_MY_COUNTRY_ROOT:Ljava/lang/String; = "MY_REGION_ROOT"

.field private static final blacklist ENV_MY_ENGINEER_ROOT:Ljava/lang/String; = "MY_ENGINEERING_ROOT"

.field private static final blacklist ENV_MY_HEYTAP_ROOT:Ljava/lang/String; = "MY_HEYTAP_ROOT"

.field private static final blacklist ENV_MY_OPERATOR_ROOT:Ljava/lang/String; = "MY_CARRIER_ROOT"

.field private static final blacklist ENV_MY_PRELOAD_ROOT:Ljava/lang/String; = "MY_PRELOAD_ROOT"

.field private static final blacklist ENV_MY_PRODUCT_ROOT:Ljava/lang/String; = "MY_PRODUCT_ROOT"

.field private static final blacklist ENV_MY_REGION_ROOT:Ljava/lang/String; = "MY_REGION_ROOT"

.field private static final blacklist ENV_MY_STOCK_ROOT:Ljava/lang/String; = "MY_STOCK_ROOT"

.field private static final blacklist ENV_OPLUS_CUSTOM_ROOT:Ljava/lang/String; = "MY_CUSTOM_ROOT"

.field private static final blacklist ENV_OPLUS_ENGINEER_ROOT:Ljava/lang/String; = "MY_ENGINEERING_ROOT"

.field private static final blacklist ENV_OPLUS_OPERATOR_ROOT:Ljava/lang/String; = "MY_OPERATOR_ROOT"

.field private static final blacklist ENV_OPLUS_PRODUCT_ROOT:Ljava/lang/String; = "MY_PRODUCT_ROOT"

.field private static final blacklist ENV_OPLUS_VERSION_ROOT:Ljava/lang/String; = "MY_VERSION_ROOT"

.field public static final whitelist NOT_ALLOW_EXT4_ACCESS:Z = true

.field private static blacklist sDIROPLUSCUSTOMROOT:Ljava/io/File;

.field private static blacklist sDIROPLUSENGINEERROOT:Ljava/io/File;

.field private static blacklist sDIROPLUSOPERATORROOT:Ljava/io/File;

.field private static blacklist sDIROPLUSPRODUCTROOT:Ljava/io/File;

.field private static blacklist sDIROPLUSVERSIONROOT:Ljava/io/File;

.field private static blacklist sDirMyBigballRoot:Ljava/io/File;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDirMyBigballRoot:Ljava/io/File;

    .line 49
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRELOAD_ROOT:Ljava/io/File;

    .line 52
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_HEYTAP_ROOT:Ljava/io/File;

    .line 55
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_STOCK_ROOT:Ljava/io/File;

    .line 58
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRODUCT_ROOT:Ljava/io/File;

    .line 62
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COUNTRY_ROOT:Ljava/io/File;

    .line 63
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_REGION_ROOT:Ljava/io/File;

    .line 67
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_OPERATOR_ROOT:Ljava/io/File;

    .line 68
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_CARRIER_ROOT:Ljava/io/File;

    .line 71
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COMPANY_ROOT:Ljava/io/File;

    .line 74
    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_ENGINEER_ROOT:Ljava/io/File;

    .line 77
    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSVERSIONROOT:Ljava/io/File;

    .line 78
    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSPRODUCTROOT:Ljava/io/File;

    .line 79
    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSENGINEERROOT:Ljava/io/File;

    .line 80
    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSOPERATORROOT:Ljava/io/File;

    .line 81
    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSCUSTOMROOT:Ljava/io/File;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static whitelist getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "variableName"    # Ljava/lang/String;
    .param p1, "defaultPath"    # Ljava/lang/String;

    .line 97
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    if-nez v0, :cond_0

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public static whitelist getMyBigballDirectory()Ljava/io/File;
    .locals 2

    .line 213
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDirMyBigballRoot:Ljava/io/File;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "MY_BIGBALL_ROOT"

    const-string v1, "/my_bigball"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDirMyBigballRoot:Ljava/io/File;

    .line 216
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDirMyBigballRoot:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyCarrierDirectory()Ljava/io/File;
    .locals 2

    .line 285
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_CARRIER_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 286
    const-string v0, "MY_CARRIER_ROOT"

    const-string v1, "/my_carrier"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_CARRIER_ROOT:Ljava/io/File;

    .line 288
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_CARRIER_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyCompanyDirectory()Ljava/io/File;
    .locals 2

    .line 297
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COMPANY_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 298
    const-string v0, "MY_COMPANY_ROOT"

    const-string v1, "/my_company"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COMPANY_ROOT:Ljava/io/File;

    .line 300
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COMPANY_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyCountryDirectory()Ljava/io/File;
    .locals 2

    .line 261
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COUNTRY_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 262
    const-string v0, "MY_REGION_ROOT"

    const-string v1, "/my_region"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COUNTRY_ROOT:Ljava/io/File;

    .line 264
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_COUNTRY_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyEngineeringDirectory()Ljava/io/File;
    .locals 2

    .line 309
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_ENGINEER_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "MY_ENGINEERING_ROOT"

    const-string v1, "/my_engineering"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_ENGINEER_ROOT:Ljava/io/File;

    .line 312
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_ENGINEER_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyHeytapDirectory()Ljava/io/File;
    .locals 2

    .line 225
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_HEYTAP_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 226
    const-string v0, "MY_HEYTAP_ROOT"

    const-string v1, "/my_heytap"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_HEYTAP_ROOT:Ljava/io/File;

    .line 228
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_HEYTAP_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyOperatorDirectory()Ljava/io/File;
    .locals 2

    .line 279
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_OPERATOR_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 280
    const-string v0, "MY_CARRIER_ROOT"

    const-string v1, "/my_carrier"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_OPERATOR_ROOT:Ljava/io/File;

    .line 282
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_OPERATOR_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyPreloadDirectory()Ljava/io/File;
    .locals 2

    .line 201
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRELOAD_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "MY_PRELOAD_ROOT"

    const-string v1, "/my_preload"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRELOAD_ROOT:Ljava/io/File;

    .line 204
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRELOAD_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyProductDirectory()Ljava/io/File;
    .locals 2

    .line 249
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRODUCT_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "MY_PRODUCT_ROOT"

    const-string v1, "/my_product"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRODUCT_ROOT:Ljava/io/File;

    .line 252
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_PRODUCT_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyRegionDirectory()Ljava/io/File;
    .locals 2

    .line 267
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_REGION_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 268
    const-string v0, "MY_REGION_ROOT"

    const-string v1, "/my_region"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_REGION_ROOT:Ljava/io/File;

    .line 270
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_REGION_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getMyStockDirectory()Ljava/io/File;
    .locals 2

    .line 237
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_STOCK_ROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 238
    const-string v0, "MY_STOCK_ROOT"

    const-string v1, "/my_stock"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_STOCK_ROOT:Ljava/io/File;

    .line 240
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->DIR_MY_STOCK_ROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOplusCotaDirectory()Ljava/io/File;
    .locals 2

    .line 119
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSOPERATORROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "MY_OPERATOR_ROOT"

    const-string v1, "/my_operator"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSOPERATORROOT:Ljava/io/File;

    .line 122
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSOPERATORROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOplusCustomDirectory()Ljava/io/File;
    .locals 2

    .line 107
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSCUSTOMROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "MY_CUSTOM_ROOT"

    const-string v1, "/my_company"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSCUSTOMROOT:Ljava/io/File;

    .line 110
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSCUSTOMROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOplusEngineerDirectory()Ljava/io/File;
    .locals 2

    .line 175
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSENGINEERROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "MY_ENGINEERING_ROOT"

    const-string v1, "/oplus_engineering"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSENGINEERROOT:Ljava/io/File;

    .line 178
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSENGINEERROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOplusProductDirectory()Ljava/io/File;
    .locals 2

    .line 163
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSPRODUCTROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "MY_PRODUCT_ROOT"

    const-string v1, "/oplus_product"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSPRODUCTROOT:Ljava/io/File;

    .line 166
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSPRODUCTROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getOplusVersionDirectory()Ljava/io/File;
    .locals 2

    .line 187
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSVERSIONROOT:Ljava/io/File;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "MY_VERSION_ROOT"

    const-string v1, "/oplus_version"

    invoke-static {v0, v1}, Landroid/os/OplusBaseEnvironment;->getDirectorySup(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSVERSIONROOT:Ljava/io/File;

    .line 190
    :cond_0
    sget-object v0, Landroid/os/OplusBaseEnvironment;->sDIROPLUSVERSIONROOT:Ljava/io/File;

    return-object v0
.end method

.method public static whitelist getReserveDirectory()Ljava/io/File;
    .locals 2

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/oplusreserve"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static whitelist getResourceDirectory()Ljava/io/File;
    .locals 1

    .line 149
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->isOplusCustomDirectoryEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusCustomDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->isOplusCotaDirectoryEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusCotaDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 154
    :cond_1
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusCustomDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isOplusCotaDirectoryEmpty()Z
    .locals 3

    .line 135
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusCotaDirectory()Ljava/io/File;

    move-result-object v0

    .line 136
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, "listFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 138
    const/4 v2, 0x0

    return v2

    .line 140
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist isOplusCustomDirectoryEmpty()Z
    .locals 3

    .line 126
    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getOplusCustomDirectory()Ljava/io/File;

    move-result-object v0

    .line 127
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 128
    .local v1, "listFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 129
    const/4 v2, 0x0

    return v2

    .line 131
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist isWhiteListMcp()Z
    .locals 2

    .line 92
    sget-object v0, Landroid/os/EnvironmentExtPlugin;->isWhiteListMcp:Lcom/oplus/reflect/RefStaticMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefStaticMethod;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
