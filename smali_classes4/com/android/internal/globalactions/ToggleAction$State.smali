.class public final enum Lcom/android/internal/globalactions/ToggleAction$State;
.super Ljava/lang/Enum;
.source "ToggleAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/globalactions/ToggleAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/globalactions/ToggleAction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist Off:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist On:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

.field public static final enum blacklist TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;


# instance fields
.field private final blacklist inTransition:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 9

    .line 35
    new-instance v0, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->Off:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 36
    new-instance v1, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v3, "TurningOn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOn:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 37
    new-instance v3, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v5, "TurningOff"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/android/internal/globalactions/ToggleAction$State;->TurningOff:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 38
    new-instance v5, Lcom/android/internal/globalactions/ToggleAction$State;

    const-string v7, "On"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lcom/android/internal/globalactions/ToggleAction$State;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/android/internal/globalactions/ToggleAction$State;->On:Lcom/android/internal/globalactions/ToggleAction$State;

    .line 34
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/internal/globalactions/ToggleAction$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "intermediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-boolean p3, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    .line 44
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/globalactions/ToggleAction$State;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/internal/globalactions/ToggleAction$State;->$VALUES:[Lcom/android/internal/globalactions/ToggleAction$State;

    invoke-virtual {v0}, [Lcom/android/internal/globalactions/ToggleAction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/globalactions/ToggleAction$State;

    return-object v0
.end method


# virtual methods
.method public blacklist inTransition()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/internal/globalactions/ToggleAction$State;->inTransition:Z

    return v0
.end method
