.class public final enum Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;
.super Ljava/lang/Enum;
.source "PredictResultType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_FAILED_DB_ERROR:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_FAILED_LESS_RECS:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_FAILED_NO_DEEPSLEEP_CLUSTER:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_FAILED_OTHER:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_OK:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

.field public static final enum whitelist PREDICT_RESULT_TYPE_UNKNOWN:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 25
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v1, "PREDICT_RESULT_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_UNKNOWN:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 26
    new-instance v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v3, "PREDICT_RESULT_TYPE_OK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_OK:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 27
    new-instance v3, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v5, "PREDICT_RESULT_TYPE_FAILED_LESS_RECS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_FAILED_LESS_RECS:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 28
    new-instance v5, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v7, "PREDICT_RESULT_TYPE_FAILED_NO_DEEPSLEEP_CLUSTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_FAILED_NO_DEEPSLEEP_CLUSTER:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 29
    new-instance v7, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v9, "PREDICT_RESULT_TYPE_FAILED_DB_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_FAILED_DB_ERROR:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 30
    new-instance v9, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    const-string v11, "PREDICT_RESULT_TYPE_FAILED_OTHER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_FAILED_OTHER:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 24
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->$VALUES:[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;
    .locals 1

    .line 24
    sget-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->$VALUES:[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    invoke-virtual {v0}, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    return-object v0
.end method
