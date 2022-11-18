.class public final enum Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
.super Ljava/lang/Enum;
.source "NotificationVisibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/NotificationVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

.field public static final enum blacklist LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;


# instance fields
.field private final blacklist mMetricsEventNotificationLocation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 49
    new-instance v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v1, "LOCATION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 50
    new-instance v1, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v3, "LOCATION_FIRST_HEADS_UP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 51
    new-instance v3, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v5, "LOCATION_HIDDEN_TOP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 52
    new-instance v5, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v7, "LOCATION_MAIN_AREA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 54
    new-instance v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v9, "LOCATION_BOTTOM_STACK_PEEKING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 56
    new-instance v9, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v11, "LOCATION_BOTTOM_STACK_HIDDEN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 57
    new-instance v11, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    const-string v13, "LOCATION_GONE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 48
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->$VALUES:[Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "metricsEventNotificationLocation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->mMetricsEventNotificationLocation:I

    .line 63
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->$VALUES:[Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v0}, [Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object v0
.end method


# virtual methods
.method public blacklist toMetricsEventEnum()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->mMetricsEventNotificationLocation:I

    return v0
.end method
