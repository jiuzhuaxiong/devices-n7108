.class public Landroid/hardware/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "android.hardware.motion.MOTION_RECOGNITION_EVENT"

.field public static final EVENT_ALL:I = 0x3ffff

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x12

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x6

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0x1f

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_MOVEMENT:I = 0x10

.field public static final MOTION_USE_PROX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mSSPEnabled:Z

.field private motionService:Landroid/hardware/motion/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .parameter "mainLooper"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerwithSSP:Ljava/util/ArrayList;

    .line 369
    new-instance v1, Landroid/hardware/motion/MotionRecognitionManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/motion/MotionRecognitionManager$1;-><init>(Landroid/hardware/motion/MotionRecognitionManager;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 77
    const-string v1, "motion_recognition"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    .line 79
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 80
    new-instance v1, Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 83
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v1

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in getSSPstatus: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x1

    .line 351
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/hardware/motion/MRListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 98
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_sensors"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 118
    return-void
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 8
    .parameter "listener"
    .parameter "motion_sensors"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    and-int/lit8 p2, p2, 0x1f

    .line 128
    and-int/lit8 v4, p2, 0x1f

    if-nez v4, :cond_0

    .line 129
    const/4 p2, 0x1

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    .line 132
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 133
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 134
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 135
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 136
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 137
    const-string v4, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    monitor-exit v5

    .line 154
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :cond_1
    :goto_1
    return-void

    .line 134
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 143
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :goto_2
    :try_start_2
    const-string v4, "MotionRecognitionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  .registerListener : success. listener count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", motion_sensors="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", listener="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v5

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 146
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in registerListener: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/motion/MRListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 108
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;I)V
    .locals 1
    .parameter "listener"
    .parameter "motion_events"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 159
    return-void
.end method

.method public registerListenerEvent(Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V
    .locals 10
    .parameter "listener"
    .parameter "motion_events"
    .parameter "handler"

    .prologue
    const/4 v9, 0x1

    .line 162
    const/4 v4, 0x1

    .line 164
    .local v4, motion_sensors:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0x12

    if-ge v1, v6, :cond_1

    .line 165
    shl-int v3, v9, v1

    .line 166
    .local v3, motion_event:I
    and-int v6, v3, p2

    if-eqz v6, :cond_0

    .line 167
    sparse-switch v3, :sswitch_data_0

    .line 164
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :sswitch_1
    or-int/lit8 v4, v4, 0x10

    .line 176
    goto :goto_1

    .line 187
    :sswitch_2
    or-int/lit8 v4, v4, 0x2

    .line 188
    goto :goto_1

    .line 191
    :sswitch_3
    or-int/lit8 v4, v4, 0x6

    .line 192
    goto :goto_1

    .line 194
    :sswitch_4
    const/16 v4, 0x1f

    .line 195
    goto :goto_1

    .line 202
    .end local v3           #motion_event:I
    :cond_1
    if-eqz p1, :cond_2

    .line 203
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 204
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 205
    .local v5, size:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_4

    .line 206
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 207
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v6

    if-ne v6, p1, :cond_3

    .line 208
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", listener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    monitor-exit v7

    .line 246
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    :cond_2
    :goto_3
    return-void

    .line 205
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 212
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_4
    new-instance v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    invoke-direct {v2, p0, p1, v4, p3}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Landroid/hardware/motion/MotionRecognitionManager;Landroid/hardware/motion/MRListener;ILandroid/os/Handler;)V

    .line 213
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionSensors()I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v8, 0x10

    if-ne v6, v8, :cond_7

    .line 216
    iget-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    if-ne v6, v9, :cond_6

    .line 217
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v6, :cond_5

    iget v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    if-nez v6, :cond_5

    .line 218
    const-string v6, "MotionRecognitionManager"

    const-string v8, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 223
    :goto_4
    iget v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :goto_5
    :try_start_2
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", motion_sensors="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", motion event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", listener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v7

    goto :goto_3

    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 221
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5       #size:I
    :cond_5
    :try_start_3
    const-string v6, "MotionRecognitionManager"

    const-string v8, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in registerListenerEvent: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    :try_start_5
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v6

    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 231
    :goto_6
    :try_start_6
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSP disabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2, v4}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V

    goto/16 :goto_5

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in getSSPstatus: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 236
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_7
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v6, v2, v4}, Landroid/hardware/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_5

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_2
        0x400 -> :sswitch_3
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x3ffff -> :sswitch_4
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 3

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1}, Landroid/hardware/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 347
    :goto_0
    return v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 363
    :try_start_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v1, p1}, Landroid/hardware/motion/IMotionRecognitionService;->setLogPath(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in setLogPath: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/hardware/motion/MRListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "status"

    .prologue
    .line 314
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 315
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 317
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 318
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 320
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 329
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 321
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 328
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 316
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .parameter "stopUp"
    .parameter "level1Up"
    .parameter "level2Up"
    .parameter "stopDown"
    .parameter "level1Down"
    .parameter "level2Down"

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/hardware/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 334
    :catch_0
    move-exception v7

    .line 335
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/motion/MRListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 249
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 250
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 252
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 253
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 254
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, listener_name:Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@ member "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 259
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 260
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_5

    .line 261
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionSensors()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    const/16 v7, 0x10

    if-ne v5, v7, :cond_4

    .line 264
    iget-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 265
    iget v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 266
    iget v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    if-gtz v5, :cond_1

    .line 267
    const-string v5, "MotionRecognitionManager"

    const-string v7, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v5, 0x0

    iput v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    .line 269
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v8, 0x5

    invoke-virtual {v5, v7, v8}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 271
    :cond_1
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterListener - mMovementCnt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->mMovementCnt:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_2
    :goto_2
    :try_start_2
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  .unregisterListener : / listener count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", listener="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    return-void

    .line 274
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_3
    :try_start_3
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5}, Landroid/hardware/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v5

    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 278
    :goto_3
    :try_start_4
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSP disabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "MotionRecognitionManager"

    const-string v7, "RemoteException in unregisterListener: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 292
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 275
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4       #size:I
    :catch_1
    move-exception v0

    .line 276
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_6
    const-string v5, "MotionRecognitionManager"

    const-string v7, "RemoteException in getSSPstatus: "

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 282
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v5, v2}, Landroid/hardware/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 258
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public useMotionAlways(Landroid/hardware/motion/MRListener;Z)V
    .locals 7
    .parameter "listener"
    .parameter "bUseAlways"

    .prologue
    .line 296
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 297
    :try_start_0
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 298
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 299
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 300
    .local v2, l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Landroid/hardware/motion/MRListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 302
    :try_start_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionManager;->motionService:Landroid/hardware/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Landroid/hardware/motion/IMotionRecognitionService;->useMotionAlways(Landroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 306
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 311
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_2
    return-void

    .line 303
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in useMotionAlways: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 310
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 298
    .restart local v1       #i:I
    .restart local v2       #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3       #size:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v2           #l:Landroid/hardware/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_1
    :try_start_3
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .useMotionAlways : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method