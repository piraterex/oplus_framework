.class abstract Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected greylist-max-o mConfigSpec:[I

.field final synthetic blacklist this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor blacklist <init>(Landroid/opengl/GLSurfaceView;[I)V
    .locals 0
    .param p2, "configSpec"    # [I

    .line 887
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 889
    return-void
.end method

.method private greylist-max-o filterConfigSpec([I)[I
    .locals 5
    .param p1, "configSpec"    # [I

    .line 923
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v0}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 924
    return-object p1

    .line 929
    :cond_0
    array-length v0, p1

    .line 930
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    .line 931
    .local v2, "newConfigSpec":[I
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 932
    add-int/lit8 v3, v0, -0x1

    const/16 v4, 0x3040

    aput v4, v2, v3

    .line 933
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v3}, Landroid/opengl/GLSurfaceView;->-$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 934
    const/4 v1, 0x4

    aput v1, v2, v0

    goto :goto_0

    .line 936
    :cond_1
    const/16 v1, 0x40

    aput v1, v2, v0

    .line 938
    :goto_0
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v2, v1

    .line 939
    return-object v2
.end method


# virtual methods
.method public whitelist chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 892
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 893
    .local v0, "num_config":[I
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    const/4 v1, 0x0

    aget v7, v0, v1

    .line 900
    .local v7, "numConfigs":I
    if-lez v7, :cond_2

    .line 905
    new-array v8, v7, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 906
    .local v8, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v8

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    invoke-virtual {p0, p1, p2, v8}, Landroid/opengl/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    .line 911
    .local v1, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v1, :cond_0

    .line 914
    return-object v1

    .line 912
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No config chosen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 908
    .end local v1    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig#2 failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    .end local v8    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No configs match configSpec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 895
    .end local v7    # "numConfigs":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "eglChooseConfig failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method abstract greylist-max-o chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
