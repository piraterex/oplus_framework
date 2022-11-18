.class Lcom/android/internal/protolog/ProtoLogGroup$Consts;
.super Ljava/lang/Object;
.source "ProtoLogGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/ProtoLogGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Consts"
.end annotation


# static fields
.field private static final blacklist ENABLE_DEBUG:Z = true

.field private static final blacklist ENABLE_LOG_TO_PROTO_DEBUG:Z = true

.field private static final blacklist TAG_WM:Ljava/lang/String; = "WindowManager"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
