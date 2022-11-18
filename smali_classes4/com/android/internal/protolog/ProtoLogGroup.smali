.class public final enum Lcom/android/internal/protolog/ProtoLogGroup;
.super Ljava/lang/Enum;
.source "ProtoLogGroup.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/ProtoLogGroup$Consts;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/ProtoLogGroup;",
        ">;",
        "Lcom/android/internal/protolog/common/IProtoLogGroup;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

.field public static final enum blacklist WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;


# instance fields
.field private final blacklist mEnabled:Z

.field private volatile blacklist mLogToLogcat:Z

.field private volatile blacklist mLogToProto:Z

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 49

    .line 28
    new-instance v7, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "WM_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "WindowManager"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_ERROR:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v9, "WM_DEBUG_ORIENTATION"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v14, "WindowManager"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 31
    new-instance v1, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v16, "WM_DEBUG_FOCUS_LIGHT"

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v21, "WindowManager"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 33
    new-instance v2, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v9, "WM_DEBUG_BOOT"

    const/4 v10, 0x3

    const-string v14, "WindowManager"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 35
    new-instance v3, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v16, "WM_DEBUG_RESIZE"

    const/16 v17, 0x4

    const-string v21, "WindowManager"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 37
    new-instance v4, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v9, "WM_DEBUG_ADD_REMOVE"

    const/4 v10, 0x5

    const-string v14, "WindowManager"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 39
    new-instance v5, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v16, "WM_DEBUG_CONFIGURATION"

    const/16 v17, 0x6

    const-string v21, "WindowManager"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 41
    new-instance v6, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v9, "WM_DEBUG_SWITCH"

    const/4 v10, 0x7

    const-string v14, "WindowManager"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 43
    new-instance v8, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v16, "WM_DEBUG_CONTAINERS"

    const/16 v17, 0x8

    const-string v21, "WindowManager"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 45
    new-instance v16, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v10, "WM_DEBUG_FOCUS"

    const/16 v11, 0x9

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-string v15, "WindowManager"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v16, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 47
    new-instance v9, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v18, "WM_DEBUG_IMMERSIVE"

    const/16 v19, 0xa

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-string v23, "WindowManager"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 49
    new-instance v10, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v25, "WM_DEBUG_LOCKTASK"

    const/16 v26, 0xb

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const-string v30, "WindowManager"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 51
    new-instance v11, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v18, "WM_DEBUG_STATES"

    const/16 v19, 0xc

    const-string v23, "WindowManager"

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 53
    new-instance v12, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v25, "WM_DEBUG_TASKS"

    const/16 v26, 0xd

    const-string v30, "WindowManager"

    move-object/from16 v24, v12

    invoke-direct/range {v24 .. v30}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 55
    new-instance v13, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v18, "WM_DEBUG_STARTING_WINDOW"

    const/16 v19, 0xe

    const-string v23, "WindowManager"

    move-object/from16 v17, v13

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 57
    new-instance v14, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v25, "WM_SHOW_TRANSACTIONS"

    const/16 v26, 0xf

    const-string v30, "WindowManager"

    move-object/from16 v24, v14

    invoke-direct/range {v24 .. v30}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 59
    new-instance v15, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v18, "WM_SHOW_SURFACE_ALLOC"

    const/16 v19, 0x10

    const-string v23, "WindowManager"

    move-object/from16 v17, v15

    invoke-direct/range {v17 .. v23}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 61
    new-instance v17, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v25, "WM_DEBUG_APP_TRANSITIONS"

    const/16 v26, 0x11

    const-string v30, "WindowManager"

    move-object/from16 v24, v17

    invoke-direct/range {v24 .. v30}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 63
    new-instance v25, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v19, "WM_DEBUG_ANIM"

    const/16 v20, 0x12

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-string v24, "WindowManager"

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v24}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v25, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 64
    new-instance v18, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v27, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    const/16 v28, 0x13

    const/16 v29, 0x1

    const/16 v30, 0x1

    const/16 v31, 0x0

    const-string v32, "WindowManager"

    move-object/from16 v26, v18

    invoke-direct/range {v26 .. v32}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v18, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 66
    new-instance v19, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v34, "WM_DEBUG_RECENTS_ANIMATIONS"

    const/16 v35, 0x14

    const/16 v36, 0x1

    const/16 v37, 0x1

    const/16 v38, 0x0

    const-string v39, "WindowManager"

    move-object/from16 v33, v19

    invoke-direct/range {v33 .. v39}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v19, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 68
    new-instance v20, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v27, "WM_DEBUG_DRAW"

    const/16 v28, 0x15

    const-string v32, "WindowManager"

    move-object/from16 v26, v20

    invoke-direct/range {v26 .. v32}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v20, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 69
    new-instance v21, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v34, "WM_DEBUG_REMOTE_ANIMATIONS"

    const/16 v35, 0x16

    const-string v39, "WindowManager"

    move-object/from16 v33, v21

    invoke-direct/range {v33 .. v39}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v21, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 71
    new-instance v22, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v27, "WM_DEBUG_SCREEN_ON"

    const/16 v28, 0x17

    const-string v32, "WindowManager"

    move-object/from16 v26, v22

    invoke-direct/range {v26 .. v32}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v22, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 72
    new-instance v23, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v34, "WM_DEBUG_KEEP_SCREEN_ON"

    const/16 v35, 0x18

    const-string v39, "WindowManager"

    move-object/from16 v33, v23

    invoke-direct/range {v33 .. v39}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v23, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 74
    new-instance v24, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v27, "WM_DEBUG_WINDOW_MOVEMENT"

    const/16 v28, 0x19

    const-string v32, "WindowManager"

    move-object/from16 v26, v24

    invoke-direct/range {v26 .. v32}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v24, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 76
    new-instance v26, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v34, "WM_DEBUG_IME"

    const/16 v35, 0x1a

    const-string v39, "WindowManager"

    move-object/from16 v33, v26

    invoke-direct/range {v33 .. v39}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v26, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 78
    new-instance v34, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v28, "WM_DEBUG_WINDOW_ORGANIZER"

    const/16 v29, 0x1b

    const/16 v31, 0x1

    const/16 v32, 0x0

    const-string v33, "WindowManager"

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v33}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v34, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 80
    new-instance v27, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v36, "WM_DEBUG_SYNC_ENGINE"

    const/16 v37, 0x1c

    const/16 v38, 0x1

    const/16 v39, 0x1

    const/16 v40, 0x0

    const-string v41, "WindowManager"

    move-object/from16 v35, v27

    invoke-direct/range {v35 .. v41}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v27, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 82
    new-instance v28, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v43, "WM_DEBUG_WINDOW_TRANSITIONS"

    const/16 v44, 0x1d

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, 0x1

    const-string v48, "WindowManager"

    move-object/from16 v42, v28

    invoke-direct/range {v42 .. v48}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v28, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 84
    new-instance v29, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v36, "WM_DEBUG_WINDOW_INSETS"

    const/16 v37, 0x1e

    const-string v41, "WindowManager"

    move-object/from16 v35, v29

    invoke-direct/range {v35 .. v41}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v29, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 86
    new-instance v30, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v43, "WM_DEBUG_CONTENT_RECORDING"

    const/16 v44, 0x1f

    const-string v48, "WindowManager"

    move-object/from16 v42, v30

    invoke-direct/range {v42 .. v48}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v30, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 88
    new-instance v31, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v36, "WM_DEBUG_WALLPAPER"

    const/16 v37, 0x20

    const-string v41, "WindowManager"

    move-object/from16 v35, v31

    invoke-direct/range {v35 .. v41}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v31, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 89
    new-instance v32, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v43, "WM_DEBUG_BACK_PREVIEW"

    const/16 v44, 0x21

    const-string v48, "CoreBackPreview"

    move-object/from16 v42, v32

    invoke-direct/range {v42 .. v48}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v32, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 91
    new-instance v33, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v36, "TEST_GROUP"

    const/16 v37, 0x22

    const-string v41, "WindowManagerProtoLogTest"

    move-object/from16 v35, v33

    invoke-direct/range {v35 .. v41}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    sput-object v33, Lcom/android/internal/protolog/ProtoLogGroup;->TEST_GROUP:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 27
    move-object/from16 v35, v15

    const/16 v15, 0x23

    new-array v15, v15, [Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v36, 0x0

    aput-object v7, v15, v36

    const/4 v7, 0x1

    aput-object v0, v15, v7

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v8, v15, v0

    const/16 v0, 0x9

    aput-object v16, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v35, v15, v0

    const/16 v0, 0x11

    aput-object v17, v15, v0

    const/16 v0, 0x12

    aput-object v25, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v20, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v26, v15, v0

    const/16 v0, 0x1b

    aput-object v34, v15, v0

    const/16 v0, 0x1c

    aput-object v27, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    const/16 v0, 0x22

    aput-object v33, v15, v0

    sput-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->$VALUES:[Lcom/android/internal/protolog/ProtoLogGroup;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IZZZLjava/lang/String;)V
    .locals 0
    .param p3, "enabled"    # Z
    .param p4, "logToProto"    # Z
    .param p5, "logToLogcat"    # Z
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    .line 108
    iput-boolean p4, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    .line 109
    iput-boolean p5, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 110
    iput-object p6, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/ProtoLogGroup;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/ProtoLogGroup;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/ProtoLogGroup;
    .locals 1

    .line 27
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->$VALUES:[Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/ProtoLogGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/ProtoLogGroup;

    return-object v0
.end method


# virtual methods
.method public blacklist getTag()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    return v0
.end method

.method public blacklist isLogToAny()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist isLogToLogcat()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return v0
.end method

.method public blacklist isLogToProto()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    return v0
.end method

.method public blacklist setLogToLogcat(Z)V
    .locals 0
    .param p1, "logToLogcat"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 146
    return-void
.end method

.method public blacklist setLogToProto(Z)V
    .locals 0
    .param p1, "logToProto"    # Z

    .line 140
    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    .line 141
    return-void
.end method
